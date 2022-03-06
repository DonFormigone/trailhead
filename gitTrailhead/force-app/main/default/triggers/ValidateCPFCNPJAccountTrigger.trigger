//before insert, before update, after insert, after update
trigger ValidateCPFCNPJAccountTrigger on Account (before update,after update) {
    ValidateCPFCNPJ.verifyChangeAccount();
}