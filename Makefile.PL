use lib '.';
use inc::Module::Install;

RTx     'RT-Site-Adventurehound';
license 'MIT';

requires_rt '5.0.0';
rt_too_new '5.2.0';

WriteAll;
