User story: Là một người mua hàng, tôi muốn các mặt hàng được hiển thị chi tiết, chân thật về hình ảnh, mô tả cấu hình máy,
            giá tiền để có thể dễ dàng đưa ra quyết định mua máy.
1. Các mặt hàng được hiển thị theo hãng sản xuất:
  - Phân loại mặt hàng máy tính theo hãng sản xuất để người dùng phân biệt và đưa ra chọn lựa mua dùng máy của hãng nào.
  - Code:
    <div class="header_bottom_left">
      <div class="categories">
        <ul>
          <h3>DANH SÁCH</h3>
          <li><a kind="Macbook" href="product.php?p_loai=1">Macbook</a></li>
          <li><a kind="Dell" href="product.php?p_loai=2">Dell</a></li>
          <li><a kind="ToShiBa" href="product.php?p_loai=3">ToShiBa</a></li>
          <li><a kind="Vaio" href="product.php?p_loai=4">Vaio</a></li>
          <li><a kind="Acer" href="product.php?p_loai=5">Acer</a></li>
          <li><a kind="Hp" href="product.php?p_loai=6">Hp</a></li>
          <li><a kind="Asus" href="product.php?p_loai=7">Asus</a></li>
          <li><a kind="MSI" href="product.php?p_loai=8">MSI</a></li>
          <li><a kind="Lenovo" href="product.php?p_loai=9">Lenovo</a></li>
          <li><a kind="Alineware" href="product.php?p_loai=10">Alineware</a></li>
          <li><a kind="Xiaomi" href="product.php?p_loai=11">Xiaomi</a></li>
          <li><a kind="Sony" href="product.php?p_loai=12">Sony</a></li>			
        </ul>
      </div>
    </div>
    
    -khi bạn truy cập vào trang web, phía bên trái giao diện sẽ hiện các thanh ghi tên hãng máy tính như ở trên để bạn chọn lựa. Bạn click vào tên đó, sẽ hiện ra cho bạn một đường link mới, tại đây hiển thị các loại máy của hãng bạn chọn lựa, 
    
2. Hiển thị chi tiết về máy bao gồm hình ảnh, cấu hình, giá tiền:
 -Code:
 <div class="cont-desc span_1_of_2">
    <div class="product-details">             
        <div class="grid images_3_of_2">
            <div id="container">
                <div id="products_example">
                 	<div id="products">
                        <div class="slides_container" style="display: block;">
                            <div class="slides_control"><img src="public/images/p6.jpg" style=""></div>                                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
                            
      	<form method="post">
        <div class="desc span_3_of_2">
            <h2>SẢN PHẨM: Dell Audi A4 </h2>
            <p>Siêu giá trị, cấu hình siêu khủng.</p>                    
            <div class="price">
                <p>Giá bán: <span>13.100.000đ</span></p>
            </div>
            <div class="available">
                <p>Lựa chọn cấu hình :</p>
                    <ul>
	                    <li>Màu sắc:
	                    	<select name="seleccolor">
		                        <option>Bạc</option>
		                        <option>Đen</option>
		                        <option>Nâu xám</option>
		                        <option>Xanh</option>
	                        </select>
	                    </li>
                    </ul>
            </div>
            <div class="share-desc">
                <div class="share">
                    <p>Chia sẻ :</p>
                        <ul>
                            <li><a href="#"><img src="public/home/images/facebook.png" alt=""></a></li>
                            <li><a href="#"><img src="public/home/images/twitter.png" alt=""></a></li>
                        </ul>
                </div>
                <div class="button">
                	<span><a href="details.php?action=add&amp;p_id=6">Thêm vào giỏ hàng</a></span>
                </div>

                <div class="clear"></div>
            </div>
        </div>
    	</form>
    <div class="product_desc">  
        <div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
            <ul class="resp-tabs-list">
                <li class="resp-tab-item resp-tab-active" aria-controls="tab_item-0" role="tab">Cấu hình</li>
                <li class="resp-tab-item" aria-controls="tab_item-1" role="tab">Mô tả</li>
                <li class="resp-tab-item" aria-controls="tab_item-2" role="tab">Đánh giá</li>
                <div class="clear"></div>
            </ul>

        <div class="resp-tabs-container">
            <h2 class="resp-accordion resp-tab-active" role="tab" aria-controls="tab_item-0">
            	<span class="resp-arrow"></span>
            	"Cấu hình"
            </h2>
            <div class="product-desc resp-tab-content resp-tab-content-active" aria-labelledby="tab_item-0" style="display:block"> 
                <div class="your-review">
                    <p class="nd_tt"><b>THÔNG TIN CHI TIẾT SẢN PHẨM</b></p>
                    <p class="nd_tt"><b>Tên máy : Dell Audi A4</b></p>
                    <p class="nd_ct">
                        <b>Cấu hình</b> : Intel Core i5-3210M 2.5GHz<br>
                        <b>Bộ nhớ</b> : 4GB RAM<br>
                        <b>HDD</b> : 500GB HDD<br>
                        <b>VAG</b> : VGA NVIDIA GeForce GT 630M<br>
                        <b>Nhà sản xuất</b> : Dell<br>
                        <b>Giá</b> : 13.100.000 đ
                    </p>
                </div>
                                               
            </div>
        </div>

                
                                                                   
                                    
