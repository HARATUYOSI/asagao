names = %w(Tato Jiro Hana John Mike Sophy Bill Alex Mary Tom)
fnames = ["佐藤","鈴木","高橋","田中"]
gnames = ["太郎","次郎","花子"]
0.upto(9) do |idx|
  Member.create(
    number: idx + 10,
    name: names[idx],
    full_name: "#{fnames[idx % 4]} #{gnames[idx % 3]}",
    email: "#{names[idx]}@example.com",
    birthday: '1997-03-23',
    sex: [1,1,2] [idx % 3],
    administrator: (idx == 0),
    password: 'foobar',
    password_confirmation: 'foobar'
  )
end
  0.upto(29) do |idx|
    Member.create(
      number: idx + 20,
      name: "test#{idx +1}",
      full_name: "test-test#{idx +2}",
      email: "#{idx * 2}@example.com",
      birthday: '1997-03-23',
      sex: 1,
      administrator: (idx == 0),
      password: 'foobar',
      password_confirmation: 'foobar'
    )
end