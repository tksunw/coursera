
Function ConvertTo-GPGEncryptedMessage {
    [CmdletBinding()]
    Param(
    [Parameter(Mandatory=$true)]
    [String]$PassphraseFile,

    [Parameter(Mandatory=$true)]
    [String]$OutputFile,

    [Parameter(Mandatory=$true)]
    [String]$InputFile
    )

    $gpg = "${env:ProgramFiles(x86)}\GnuPG\bin\gpg.exe"

    & $gpg --batch --yes --passphrase-file "$PassphraseFile" --cipher-algo AES256 --armor --output "$OutputFile" --symmetric "$InputFile"

}
