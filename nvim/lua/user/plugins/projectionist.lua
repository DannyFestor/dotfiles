vim.g.projectionist_heuristics = {
  artisan = {
    ['*'] = {
      start = 'php artisan serve', -- :start starts dev server in php project
      console = 'php artisan tinker', -- :console starts tinker in php project
    },
    ['app/*.php'] = {
      type = 'source',
      alternate = {
        'tests/Unit/{}Test.php',
        'tests/Feature/{}Test.php',
      },
    },
    ['tests/Feature/*Test.php'] = {
      type = 'test',
      alternate = 'app/{}.php',
    },
    ['tests/Feature/*Test.php'] = {
      type = 'test',
      alternate = 'app/{}.php',
    },
    ['app/Models/*.php'] = {
      type = 'model',
    },
    ['app/Http/Controllers/*.php'] = {
      type = 'controller',
    },
    ['routes/*.php'] = {
      type = 'route',
    },
    ['database/migrations/*.php'] = {
      type = 'migration',
    },
  },
}
