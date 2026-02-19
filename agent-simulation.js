// ============================================
// AGENT SIMULATION SYSTEM
// ============================================

class AgentSimulator {
    constructor() {
        this.agents = {
            productManager: new ProductManagerAgent(),
            frontendDev: new FrontendDevAgent(),
            uxDesigner: new UXDesignerAgent(),
            qaEngineer: new QAEngineerAgent()
        };
        this.logs = [];
        this.isRunning = false;
    }

    log(agent, action, details) {
        const logEntry = {
            timestamp: new Date().toISOString(),
            agent: agent,
            action: action,
            details: details
        };
        this.logs.push(logEntry);
        console.log(`[${agent}] ${action}: ${details}`);
        
        // Also display in UI if element exists
        const logElement = document.getElementById('agentLogs');
        if (logElement) {
            const logLine = document.createElement('div');
            logLine.textContent = `[${new Date().toLocaleTimeString()}] [${agent}] ${action}: ${details}`;
            logElement.appendChild(logLine);
            logElement.scrollTop = logElement.scrollHeight;
        }
    }

    simulateTicket(ticket) {
        this.log('SYSTEM', 'Ticket Started', `Processing ticket: ${ticket.id} - ${ticket.title}`);
        
        // Product Manager reviews and prioritizes
        this.agents.productManager.reviewTicket(ticket, this);
        
        // Frontend Developer implements
        this.agents.frontendDev.implementTicket(ticket, this);
        
        // UX Designer reviews
        this.agents.uxDesigner.reviewTicket(ticket, this);
        
        // QA Engineer tests
        this.agents.qaEngineer.testTicket(ticket, this);
        
        // Product Manager accepts
        this.agents.productManager.acceptTicket(ticket, this);
        
        this.log('SYSTEM', 'Ticket Completed', `Ticket ${ticket.id} completed successfully`);
    }
}

class ProductManagerAgent {
    reviewTicket(ticket, simulator) {
        simulator.log('Product Manager', 'Reviewing Ticket', `Ticket: ${ticket.title}`);
        simulator.log('Product Manager', 'Checking Criteria', 'Verifying acceptance criteria are clear');
        
        if (!ticket.acceptanceCriteria || ticket.acceptanceCriteria.length === 0) {
            simulator.log('Product Manager', 'Requesting Changes', 'Ticket needs acceptance criteria');
            return false;
        }
        
        simulator.log('Product Manager', 'Ticket Approved', 'Ticket ready for development');
        return true;
    }

    acceptTicket(ticket, simulator) {
        simulator.log('Product Manager', 'Final Review', 'Reviewing completed work');
        simulator.log('Product Manager', 'Verifying Criteria', 'Checking all acceptance criteria met');
        simulator.log('Product Manager', 'Ticket Accepted', `Ticket ${ticket.id} accepted and moved to Done`);
        return true;
    }
}

class FrontendDevAgent {
    implementTicket(ticket, simulator) {
        simulator.log('Frontend Developer', 'Starting Work', `Implementing: ${ticket.title}`);
        simulator.log('Frontend Developer', 'Planning', 'Reviewing requirements and planning approach');
        simulator.log('Frontend Developer', 'Coding', 'Writing implementation code');
        simulator.log('Frontend Developer', 'Self-Testing', 'Testing own work before submission');
        simulator.log('Frontend Developer', 'Code Complete', 'Implementation ready for review');
        return true;
    }
}

class UXDesignerAgent {
    reviewTicket(ticket, simulator) {
        simulator.log('UX Designer', 'UX Review', `Reviewing UX aspects of: ${ticket.title}`);
        simulator.log('UX Designer', 'Accessibility Check', 'Verifying touch targets and accessibility');
        simulator.log('UX Designer', 'User Flow', 'Validating user experience flow');
        simulator.log('UX Designer', 'Design Approved', 'UX review passed');
        return true;
    }
}

class QAEngineerAgent {
    testTicket(ticket, simulator) {
        simulator.log('QA Engineer', 'Creating Test Cases', `Creating tests for: ${ticket.title}`);
        simulator.log('QA Engineer', 'Executing Tests', 'Running test cases');
        simulator.log('QA Engineer', 'Cross-Browser Testing', 'Testing on Chrome, Firefox, Safari');
        simulator.log('QA Engineer', 'Mobile Testing', 'Testing on mobile devices');
        simulator.log('QA Engineer', 'Tests Passed', 'All tests passed successfully');
        return true;
    }
}

// Export for use in HTML
if (typeof window !== 'undefined') {
    window.AgentSimulator = AgentSimulator;
    window.ProductManagerAgent = ProductManagerAgent;
    window.FrontendDevAgent = FrontendDevAgent;
    window.UXDesignerAgent = UXDesignerAgent;
    window.QAEngineerAgent = QAEngineerAgent;
}
