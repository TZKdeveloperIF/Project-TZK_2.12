Radio001 setTriggerText " "; Radio001 setTriggerStatements ["this", "", ""];
Radio002 setTriggerText "Mission Setting"; Radio002 setTriggerStatements ["this", "[] exec {Player\Dialog\TZK_Mission_Setting_1.sqs}", ""];
Radio003 setTriggerText "Switch 080m/s Magazine"; Radio003 setTriggerStatements ["this", "[(vehicle player), 080, {M}] exec {Player\Radio\Graduation.sqs}", ""];
Radio004 setTriggerText "Switch 120m/s Magazine"; Radio004 setTriggerStatements ["this", "[(vehicle player), 120, {M}] exec {Player\Radio\Graduation.sqs}", ""];
Radio005 setTriggerText "Switch 180m/s Magazine"; Radio005 setTriggerStatements ["this", "[(vehicle player), 180, {M}] exec {Player\Radio\Graduation.sqs}", ""];
Radio006 setTriggerText " "; Radio006 setTriggerStatements ["this", "", ""];
Radio007 setTriggerText " "; Radio007 setTriggerStatements ["this", "", ""];
Radio008 setTriggerText " "; Radio008 setTriggerStatements ["this", "", ""];
Radio009 setTriggerText " "; Radio009 setTriggerStatements ["this", "", ""];
Radio000 setTriggerText "Reset Vector Up"; Radio000 setTriggerStatements ["this", "[vehicle player] exec {Player\Radio\RadioList_Struct_ResetUp.sqs}", ""];