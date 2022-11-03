$(document).ready(function () {

	s.evar2 = s.getQueryParam('inflow_route');

	// �����o�H�̐ݒ�
	urlParamArray = location.search.substring(1).split('&');
	for (i = 0; urlParamArray[i]; i++) {
		var paramArray = urlParamArray[i].split('=');
		if (paramArray[0] === "inflow_route") {
			$('input:hidden[name="inflow_route"]').val(paramArray[1]);
		}
	}


	$("#lp-inquiry-form").submit(function () {
		// ���O�̓��͊m�F
		formErrorDisplay($("input[name='family-name_1']").val() === "" || $("input[name='given-name_1']").val() === "", "name_1_error");

		// ���O(�t���K�i)�̓��͊m�F
		if (isKatakana($("input[name='family-name_2']").val()) && isKatakana($("input[name='given-name_2']").val())) {
			formErrorDisplay($("input[name='family-name_2']").val() === "" || $("input[name='given-name_2']").val() === "", "name_2_error");
		} else {
			formErrorDisplay(true, "name_2_error");
		}

		// ���[���A�h���X�̓��͊m�F
		formErrorDisplay($("input[name='email']").val() === "", "email_1_error");

		// ���[���A�h���X(�m�F�p)�̓��͊m�F
		formErrorDisplay($("input[name='email']").val() !== $("input[name='email_confirmation']").val(), "email_2_error");

		// �d�b�ԍ��̓��͊m�F
		formErrorDisplay($("input[name='tel']").val() === "" || !isTelNo($("input[name='tel']").val()), "tel_error");

		// ��Ж��̓��͊m�F
		formErrorDisplay($("input[name='company']").val() === "", "company_error");

		// ��Ѓz�[���y�[�WURL�̓��͊m�F
		formErrorDisplay($("input[name='company_url']").val() === "", "company_url_error");

		// �G���[�e�L�X�g���\������Ă���ꍇ��submit���Ȃ�
		if ($("p.error").is(":visible")) {
			return false;
		}
	});

	// �t�H�[���̃G���[�\��
	function formErrorDisplay(checkFlg, errorClass) {
		if (checkFlg) {
			$("p." + errorClass).css('display', 'block');
		} else {
			$("p." + errorClass).css('display', 'none');
		}
	}

	// �J�^�J�i�`�F�b�N�itrue�F�J�^�J�i�j
	function isKatakana(targetWord) {
		return targetWord.match(/^[\u30a0-\u30ff]+$/) !== null;
	}

	// �d�b�ԍ��`�F�b�N�itrue�F���p�����݂̂��A21�������j
	function isTelNo(targetNo) {
		if (targetNo.match(/[^0-9]+/) !== null || targetNo.length > 20) {
			return false;
		} else {
			return true;
		}
	}
})