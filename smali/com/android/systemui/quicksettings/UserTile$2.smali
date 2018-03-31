.class Lcom/android/systemui/quicksettings/UserTile$2;
.super Landroid/os/AsyncTask;
.source "UserTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/quicksettings/UserTile;->queryForUserInformation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/util/Pair",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/drawable/Drawable;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/quicksettings/UserTile;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$userId:I

.field final synthetic val$userName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/quicksettings/UserTile;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/systemui/quicksettings/UserTile$2;->this$0:Lcom/android/systemui/quicksettings/UserTile;

    iput-object p2, p0, Lcom/android/systemui/quicksettings/UserTile$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/quicksettings/UserTile$2;->val$userName:Ljava/lang/String;

    iput p4, p0, Lcom/android/systemui/quicksettings/UserTile$2;->val$userId:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/util/Pair;
    .locals 17
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/quicksettings/UserTile$2;->this$0:Lcom/android/systemui/quicksettings/UserTile;

    iget-object v1, v1, Lcom/android/systemui/quicksettings/UserTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v15

    .line 159
    .local v15, "um":Landroid/os/UserManager;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/quicksettings/UserTile$2;->this$0:Lcom/android/systemui/quicksettings/UserTile;

    iget-object v1, v1, Lcom/android/systemui/quicksettings/UserTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 161
    .local v14, "res":Landroid/content/res/Resources;
    const/4 v12, 0x0

    .line 162
    .local v12, "name":Ljava/lang/String;
    const/4 v7, 0x0

    .line 163
    .local v7, "avatar":Landroid/graphics/drawable/Drawable;
    const/4 v10, 0x0

    .line 167
    .local v10, "id":Ljava/lang/String;
    invoke-virtual {v15}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_4

    .line 169
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/quicksettings/UserTile$2;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "photo_file_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "display_name"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 173
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 175
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    const-string v1, "display_name"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 177
    const-string v1, "photo_file_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 180
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 185
    if-nez v12, :cond_2

    .line 186
    const v1, 0x7f02004b

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 187
    const v1, 0x104067f

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 219
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_0
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v12, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 180
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    .line 189
    :cond_2
    const/4 v13, 0x0

    .line 190
    .local v13, "rawAvatar":Landroid/graphics/Bitmap;
    const/4 v11, 0x0

    .line 192
    .local v11, "is":Ljava/io/InputStream;
    :try_start_1
    sget-object v1, Landroid/provider/ContactsContract$DisplayPhoto;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v16

    .line 194
    .local v16, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/quicksettings/UserTile$2;->this$0:Lcom/android/systemui/quicksettings/UserTile;

    iget-object v1, v1, Lcom/android/systemui/quicksettings/UserTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v11

    .line 195
    invoke-static {v11}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 196
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    .end local v7    # "avatar":Landroid/graphics/drawable/Drawable;
    invoke-direct {v7, v14, v13}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 200
    .restart local v7    # "avatar":Landroid/graphics/drawable/Drawable;
    if-eqz v11, :cond_1

    .line 202
    :try_start_2
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 203
    :catch_0
    move-exception v1

    goto :goto_0

    .line 197
    .end local v7    # "avatar":Landroid/graphics/drawable/Drawable;
    .end local v16    # "uri":Landroid/net/Uri;
    :catch_1
    move-exception v9

    .line 198
    .local v9, "e":Ljava/io/FileNotFoundException;
    const v1, 0x7f02004b

    :try_start_3
    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v7

    .line 200
    .restart local v7    # "avatar":Landroid/graphics/drawable/Drawable;
    if-eqz v11, :cond_1

    .line 202
    :try_start_4
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 203
    :catch_2
    move-exception v1

    goto :goto_0

    .line 200
    .end local v7    # "avatar":Landroid/graphics/drawable/Drawable;
    .end local v9    # "e":Ljava/io/FileNotFoundException;
    :catchall_1
    move-exception v1

    if-eqz v11, :cond_3

    .line 202
    :try_start_5
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 204
    :cond_3
    :goto_1
    throw v1

    .line 210
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v11    # "is":Ljava/io/InputStream;
    .end local v13    # "rawAvatar":Landroid/graphics/Bitmap;
    .restart local v7    # "avatar":Landroid/graphics/drawable/Drawable;
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/quicksettings/UserTile$2;->val$userName:Ljava/lang/String;

    .line 211
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/quicksettings/UserTile$2;->val$userId:I

    invoke-virtual {v15, v1}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 212
    .restart local v13    # "rawAvatar":Landroid/graphics/Bitmap;
    if-eqz v13, :cond_5

    .line 213
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    .end local v7    # "avatar":Landroid/graphics/drawable/Drawable;
    invoke-direct {v7, v14, v13}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local v7    # "avatar":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 215
    :cond_5
    const v1, 0x7f02004b

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto :goto_0

    .line 203
    .end local v7    # "avatar":Landroid/graphics/drawable/Drawable;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v11    # "is":Ljava/io/InputStream;
    :catch_3
    move-exception v2

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 155
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/quicksettings/UserTile$2;->doInBackground([Ljava/lang/Void;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/util/Pair;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 224
    .local p1, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/graphics/drawable/Drawable;>;"
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 225
    iget-object v2, p0, Lcom/android/systemui/quicksettings/UserTile$2;->this$0:Lcom/android/systemui/quicksettings/UserTile;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/quicksettings/UserTile;->setUserTileInfo(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 226
    iget-object v0, p0, Lcom/android/systemui/quicksettings/UserTile$2;->this$0:Lcom/android/systemui/quicksettings/UserTile;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/quicksettings/UserTile;->access$102(Lcom/android/systemui/quicksettings/UserTile;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 227
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 155
    check-cast p1, Landroid/util/Pair;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/quicksettings/UserTile$2;->onPostExecute(Landroid/util/Pair;)V

    return-void
.end method
