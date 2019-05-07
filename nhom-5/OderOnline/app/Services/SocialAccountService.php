<?php
namespace App\Services;

use App\Http\Controllers\Auth\VerificationController;
use App\Http\Controllers\Controller;
use Laravel\Socialite\Contracts\User as ProviderUser;
use App\SocialAccount;
use App\User;
use Illuminate\Foundation\Auth\VerifiesEmails;
use datetime;

class SocialAccountService extends VerificationController
{

    public static function createOrGetUser(ProviderUser $providerUser, $social)
    {
        $account = SocialAccount::whereProvider($social)
            ->whereProviderUserId($providerUser->getId())
            ->first();

        if ($account) {
            return $account->user;
        } else {
            $email = $providerUser->getEmail() ?? $providerUser->getNickname();
            $account = new SocialAccount([
                'provider_user_id' => $providerUser->getId(),
                'provider' => $social
            ]);
            $user = User::whereEmail($email)->first();

            if (!$user) {
                $datetime = new datetime();
               // dd($datetime->format('Y-m-d'));
                $user = User::create([
                    'email' => $email,
                    'name' => $providerUser->getName(),
                    'password' => bcrypt($email),
                    'email_verified_at'=>$datetime->format('Y-m-d'),
                ]);
            }else{
                auth()->login($user);
            }

            $account->user()->associate($user);
            $account->save();

            return $user;
        }
    }
}