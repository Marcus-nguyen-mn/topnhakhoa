<?php
/**
 * template name: Contact Page
 */
get_header();
?>
<section class="mc_main contact_page">
    <div class="mc-container">
        <div class="contact-page-contain">
            <div class="sub_titl_contact">
                <?php echo get_field("sub_title_contact_page"); ?>
            </div>
            <div class="title_contact">
                <?php echo get_field("title_contact_page"); ?>
            </div>
            <div class="contact_maps">
                <?php echo get_field("maps_contact_page"); ?>
            </div>
            <div class="mc-form-contact-page">
                <div class="mc-title-form-ctp">
                    <?php echo get_field("title_form_contact_page"); ?>
                </div>
                <div class="desc-from-ctp">
                    <?php echo get_field("description_form_contact_page"); ?>
                </div>
                <form class="formCtpPage" id="formCtpPage" name="formCtpPage">
                    <div class="mc-row mc-mg--15">
                        <div class="mc-col-6 mc-col-sm-12 mc-pdx-15">
                            <div class="ctp-inpt-form">
                                <input type="text" name="hoTen" id="nameCtp" placeholder="Name" />
                                <div class="nameVal">
                                    Bạn chưa nhập họ tên
                                </div>
                            </div>
                        </div>
                        <div class="mc-col-6 mc-col-sm-12 mc-pdx-15">
                            <div class="ctp-inpt-form">
                                <input type="text" name="emailCtp" placeholder="Email" />
                            </div>
                        </div>
                        <div class="mc-col-6 mc-col-sm-12 mc-pdx-15">
                            <div class="ctp-inpt-form">
                                <input type="text" name="Sdt" id="sdtCtp" placeholder="Phone Number" />
                                <div class="phoneVal">
                                    Bạn chưa nhập số điện thoại
                                </div>
                            </div>
                        </div>
                        <div class="mc-col-6 mc-col-sm-12 mc-pdx-15">
                            <div class="ctp-inpt-form">
                                <input type="text" name="webCtp" placeholder="Website" />
                            </div>
                        </div>
                        <div class="mc-col-12 mc-pdx-15">
                            <div class="ctp-inpt-form ctp-textarea-form">
                                <textarea id="" name="message" placeholder="Message..."></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="mc-ctp-sub">
                        <button type="submit" class="btn-subm-ctp">Leave a Message</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>
<?php get_footer();?>