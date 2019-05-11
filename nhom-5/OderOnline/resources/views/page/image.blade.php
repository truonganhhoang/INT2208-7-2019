<form class="form-group" method="post" action="{{route('post_img')}}" enctype="multipart/form-data">
    @csrf

    <div class="sp-image">
        <span>Hình ảnh</span>
        <input  type="file" name="img" id="img">
    </div>
    <div class="sp-submit" style="position: relative;left: 40%;top: 3px">

        <input  type="submit" value="submit" >
    </div>

</form>