# Example #

## Enviroment ##

### Blog URL ###

```
http://example.com/mt/
```

### Blog Path ###

```
/var/www/html/mt/
```

### Entry filename ###

```
released-new-applications.html
```

### Entry's category directory name ###

```
topics
```

## Template ##

```
<p>This article published in this server: <mt:publishpath /></p>
<p>You can access with this URL: <mt:publishurl /></p>
```

## Output HTML ##

```
<p>This article published in this server: /var/www/html/mt/topics/released-new-applications.html</p>
<p>You can access with this URL: http://example.com/mt/topics/released-new-applications.html</p>
```


---



# 出力例 #

## 環境 ##

### ブログURL ###

```
http://example.com/mt/
```

### ブログパス ###

```
/var/www/html/mt/
```

### 記事ファイル名 ###

```
released-new-applications.html
```

### 記事のカテゴリのフォルダ名 ###

```
topics
```

## テンプレート ##

```
<p>この記事はサーバー内で次のパスへ生成されています。: <mt:publishpath /></p>
<p>次のURLでアクセスできます。: <mt:publishurl /></p>
```

## Output HTML ##

```
<p>この記事はサーバー内で次のパスへ生成されています。: /var/www/html/mt/topics/released-new-applications.html</p>
<p>次のURLでアクセスできます。: http://example.com/mt/topics/released-new-applications.html</p>
```