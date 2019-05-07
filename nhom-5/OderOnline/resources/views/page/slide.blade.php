<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        @foreach($slide as $sl)
            @if($sl->id == 1)
                <li data-target="#myCarousel" data-slide-to="{{$sl->id}}" class="active"></li>
            @else
                <li data-target="#myCarousel" data-slide-to="{{$sl->id}}"></li>
            @endif
        @endforeach


    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
        @foreach($slide as $sl)
            @if($sl->id == 1)
                <div class="item active">
                    <img src="img/slide/{{$sl->image}}@yield('slide')" alt="New York" width="1200" height="300">
                    <div class="carousel-caption">
                        <h3>{{$sl->tenbanh}}</h3>
                        <p>{{$sl->dacdiem}}</p>
                    </div>
                </div>
            @else
                <div class="item">
                    <img src="img/slide/{{$sl->image}}" alt="New York" width="1200" height="300">
                    <div class="carousel-caption">
                        <h3>{{$sl->tenbanh}}</h3>
                        <p>{{$sl->dacdiem}}</p>
                    </div>
                </div>
            @endif
        @endforeach

        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>

    </div>
</div>