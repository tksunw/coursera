
Function ConvertFrom-GPGEncryptedMessage {
    [CmdletBinding()]
    Param(
    [Parameter(Mandatory=$true)]
    [String]$PassphraseFile,

    [Parameter(Mandatory=$true)]
    [String]$OutputFile,

    [Parameter(Mandatory=$true)]
    [String]$InputFile
    )

    & 'C:\Program Files (x86)\GnuPG\bin\gpg.exe' --batch --yes --passphrase-file $PassphraseFile --output $OutputFile --decrypt $InputFile

}
