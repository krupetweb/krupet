<ul class="nav tabs-vertical">
				<br />
				<li class="<?php if($page_name=='hospital_survey_question_form') echo 'active' ?>">
					<a href="<?=base_url()?>admin/hospital_survey_question_form/update/<?=$id_question?>">Overview</a>
				</li>
				<li class="<?php if($page_name=='hospital_survey_answers'  or $page_name=='hospital_survey_answer_form') echo 'active' ?>">
					<a <?php if($page_name=='hospital_survey_question_form' AND $action=='create'){?>  href="#" style='cursor:not-allowed;' <?php }else { ?> href="<?=base_url()?>admin/hospital_survey_answers/<?=$id_question?> <?php } ?>">Queustions and Answers</a>
				</li>
				
</ul>