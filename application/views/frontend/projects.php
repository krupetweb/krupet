          <?php foreach($data as $row) {?>
            <div class="masonry-item web-design branding">
              <div class="work-img">
                <a href="<?=$row->url?>" target="_blank" class="lightbox-video mfp-iframe">
                  <img src="<?php echo base_url()?><?php echo $row->image?>" alt="img">              
                  <div class="work-description text-center">
                    <h3><?=$row->name?></h3>
                    <span><?=$row->url?></span>
                  </div>
                </a>
              </div>
            </div>
          <?php } ?>