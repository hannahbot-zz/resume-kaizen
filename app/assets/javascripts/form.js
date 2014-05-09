$(document).ready(function(){
	$(".send-resume-link").click(function(){
		group_id = $(this).data("group-id");
		$("#resume_group_id").val(group_id);
		group_id = $(this).data("reviewer-id");
		$("#resume_group_id").val(reviewer);
		group_id = $(this).data("name");
		$("#resume_group_id").val(name);
	})
})