'use strict';

/**
 * schedules-day-standby service.
 */

const { createCoreService } = require('@strapi/strapi').factories;

module.exports = createCoreService('api::schedules-day-standby.schedules-day-standby');
