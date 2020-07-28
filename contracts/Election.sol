// SPDX-License-Identifier: MIT
pragma solidity >=0.4.21 <0.7.0;

contract Election {
    // Model a Candidate
    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }
    mapping(uint => Candidate) public candidates;
    
    constructor () public {
        addCandidate("Candidate 1");
        addCandidate("Candidate 2");
    }

    // Read/write Candidates

    // Store Candidates Count
    uint public candidatesCount;
    function addCandidate (string memory _name) private {
        candidatesCount ++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }
}