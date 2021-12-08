#build
#dotnet build ApacheNmsSingleAppError.csproj --configuration Release --nologo

echo '-----------------------------------------------------------------------------------------------------------------'
echo 'Example without PublishSingleFile is success:'
dotnet publish ApacheNmsSingleAppError.csproj --configuration Release --nologo -r win-x64 --self-contained false -o ./bin/publish -v q
./bin/publish/ApacheNmsSingleAppError.exe

echo '-----------------------------------------------------------------------------------------------------------------'
echo 'Example with PublishSingleFile throw exception:'
dotnet publish ApacheNmsSingleAppError.csproj --configuration Release --nologo -r win-x64 --self-contained false -o ./bin/publish -v q -p:PublishSingleFile=true
./bin/publish/ApacheNmsSingleAppError.exe
