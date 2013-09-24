function rootDir = getCodeRoot()

%% Config
defaultRootDir = '/Users/rsage/code/';
listOfRootDirKeywords = {
    'superModule',
    };

%% Find first folder that contains one of the words

candidateDir = pwd; % Start at current and work up

if ~checkIfStringContainsAnyOfCellEntries(candidateDir,listOfRootDirKeywords)
    rootDir = defaultRootDir;
    return;
end

iter = 1;
while true
    [nextCandidateDir,candidateDirEnding] = fileparts(candidateDir);
    
    if checkIfStringContainsAnyOfCellEntries(candidateDirEnding,listOfRootDirKeywords)
        break;
    end
    
    candidateDir = nextCandidateDir;
    
    if iter > 10, break; end
end

if nargout >=1
    rootDir = candidateDir;
end

function boolReturn = checkIfStringContainsAnyOfCellEntries(strIn, cellIn)

boolReturn = false;
for i = 1:length(cellIn)
    found = strfind(strIn,cellIn{i});
    if found
        boolReturn = true;
    end
end

