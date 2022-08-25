require 'sinatra'

set :environment, :production

get '/' do
  erb :index
end

post '/push' do
  #puts "ジョギングした距離と時間を入力してください。1kmのラップタイムを計算します。"
j = [params[:hour], params[:minute], params[:second]]

int = []

for n in j
  int.push(n.to_i)
end
"#{int}"

t = [3600, 60, 1]

i = 0
result = []
while i <= 2
  result[i] = int[i]*t[i]
  i = i + 1
end
"#{result}"

# タイムを秒数に変換
s = result.sum

"#{result.sum}"


#puts "走った距離を何.何kmとしてスペースを開けて2つの数字を入力してください。"
k = [params[:km], params[:m]]
int2 = []
for o in k
  int2.push(o.to_i)
end
km = [1000, 100]

l = 0
result2 = []
while l <= 1
  result2[l] = int2[l]*km[l]
  l = l + 1
end

#距離をmに変換
m = result2.sum

"#{result2.sum}"


b = (1000/(m/s)).round

mm, ss = b.divmod(60) 

"#{mm} minutes #{ss} seconds
<br>
<br>
<a href='/'>Back</a>"

end



