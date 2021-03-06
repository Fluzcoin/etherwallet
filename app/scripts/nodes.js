'use strict';
var nodes = function() {}
nodes.customNode = require('./nodeHelpers/customNode');
nodes.infuraNode = require('./nodeHelpers/infura');
nodes.metamaskNode = require('./nodeHelpers/metamask');
nodes.nodeTypes = {
    ETH: "FFC"
};
nodes.ensNodeTypes = [nodes.nodeTypes.ETH, nodes.nodeTypes.Ropsten];
nodes.ensSubNodeTypes = [nodes.nodeTypes.ETH];
nodes.domainsaleNodeTypes = [nodes.nodeTypes.ETH, nodes.nodeTypes.Ropsten];
nodes.customNodeObj = {
    'name': 'CUS',
    'blockExplorerTX': '',
    'blockExplorerAddr': '',
    'type': nodes.nodeTypes.Custom,
    'eip155': false,
    'chainId': '',
    'tokenList': [],
    'abiList': [],
    'service': 'Custom',
    'lib': null
};
nodes.nodeList = {
    'fluz': {
        'name': 'FFC',
        'blockExplorerTX': 'https://explorer.fluzcoin.io/transaction/[[txHash]]',
        'blockExplorerAddr': 'https://explorer.fluzcoin.io/account/[[address]]',
        'type': nodes.nodeTypes.ETH,
        'eip155': true,
        'chainId': '',
        'tokenList': [],
        'abiList': [],
        'service': 'Fluzcoin',
        'lib': new nodes.customNode('https://node.fluzcoin.io')
    }
};


nodes.ethPrice = require('./nodeHelpers/ethPrice');
module.exports = nodes;
