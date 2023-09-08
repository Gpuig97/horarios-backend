'use strict';

/**
 * schedule-turn-agent service.
 */

const { createCoreService } = require('@strapi/strapi').factories;

module.exports = createCoreService('api::schedule-turn-agent.schedule-turn-agent');
