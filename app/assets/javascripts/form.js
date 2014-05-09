$(document).ready(function(){
	$(".send-resume-link").click(function(){
		group_id = $(this).data("group-id");
		$("#resume_group_id").val(group_id);
		
		name = $(this).data("name");
		$("#resume_name").val(name);

		reviewer_id = $(this).data("reviewer-id");
		$("#resume_reviewer_id").val(reviewer_id);
	})
})