#encoding: utf-8
前提 /^次の"(.*?)"レコードがある$/ do |factory, table|
  table.hashes.each do |hash|
    FactoryGirl.create(factory, hash)
  end
end

前提 /^"(.*?)"ページを表示している$/ do |addr|
  visit addr
end

もし /^"(.*?)"ページを表示する$/ do |addr|
  visit addr
end

ならば /^"(.*?)"と表示されていること$/ do |content|
  expect(page).to have_content content
end
