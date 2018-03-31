.class public Lcom/android/systemui/cm/SpamMessageProvider;
.super Landroid/content/ContentProvider;
.source "SpamMessageProvider.java"


# static fields
.field private static final sURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mDbHelper:Lcom/android/systemui/cm/SpamOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 26
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/systemui/cm/SpamMessageProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 33
    sget-object v0, Lcom/android/systemui/cm/SpamMessageProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.cyanogenmod.spam"

    const-string v2, "packages"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 34
    sget-object v0, Lcom/android/systemui/cm/SpamMessageProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.cyanogenmod.spam"

    const-string v2, "package/id/*"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 35
    sget-object v0, Lcom/android/systemui/cm/SpamMessageProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.cyanogenmod.spam"

    const-string v2, "message"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 36
    sget-object v0, Lcom/android/systemui/cm/SpamMessageProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.cyanogenmod.spam"

    const-string v2, "message/#"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 37
    sget-object v0, Lcom/android/systemui/cm/SpamMessageProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.cyanogenmod.spam"

    const-string v2, "message/inc_count/#"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private getPackageId(Ljava/lang/String;)J
    .locals 12
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v11, 0x0

    .line 109
    const-wide/16 v9, -0x1

    .line 110
    .local v9, "rowId":J
    iget-object v0, p0, Lcom/android/systemui/cm/SpamMessageProvider;->mDbHelper:Lcom/android/systemui/cm/SpamOpenHelper;

    invoke-virtual {v0}, Lcom/android/systemui/cm/SpamOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "packages"

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v11

    const-string v3, "package_name=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v11

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 113
    .local v8, "idCursor":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 114
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 117
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 119
    :cond_1
    return-wide v9
.end method

.method private getPackageName(J)Ljava/lang/String;
    .locals 10
    .param p1, "packageId"    # J

    .prologue
    .line 87
    const/4 v8, 0x0

    .line 89
    .local v8, "packageName":Ljava/lang/String;
    const/4 v9, 0x0

    .line 91
    .local v9, "pkgCursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/cm/SpamMessageProvider;->mDbHelper:Lcom/android/systemui/cm/SpamOpenHelper;

    invoke-virtual {v0}, Lcom/android/systemui/cm/SpamOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "packages"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "package_name"

    aput-object v4, v2, v3

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 94
    if-eqz v9, :cond_1

    .line 95
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 98
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :cond_1
    if-eqz v9, :cond_2

    .line 102
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 105
    :cond_2
    return-object v8

    .line 101
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_3

    .line 102
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private notifyChange()V
    .locals 3

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/android/systemui/cm/SpamMessageProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/util/cm/SpamFilter;->NOTIFICATION_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 166
    return-void
.end method

.method private removePackageIfNecessary(I)V
    .locals 9
    .param p1, "packageId"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 169
    iget-object v2, p0, Lcom/android/systemui/cm/SpamMessageProvider;->mDbHelper:Lcom/android/systemui/cm/SpamOpenHelper;

    invoke-virtual {v2}, Lcom/android/systemui/cm/SpamOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "notifications"

    const-string v4, "package_id=?"

    new-array v5, v8, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v2, v3, v4, v5}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    .line 172
    .local v0, "numEntries":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 173
    iget-object v2, p0, Lcom/android/systemui/cm/SpamMessageProvider;->mDbHelper:Lcom/android/systemui/cm/SpamOpenHelper;

    invoke-virtual {v2}, Lcom/android/systemui/cm/SpamOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "packages"

    const-string v4, "_id=?"

    new-array v5, v8, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 176
    :cond_0
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 13
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 180
    sget-object v0, Lcom/android/systemui/cm/SpamMessageProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v9

    .line 181
    .local v9, "match":I
    packed-switch v9, :pswitch_data_0

    .line 206
    const/4 v12, 0x0

    :cond_0
    :goto_0
    return v12

    .line 183
    :pswitch_0
    const/4 v11, 0x0

    .line 184
    .local v11, "packageName":Ljava/lang/String;
    const/4 v10, -0x1

    .line 185
    .local v10, "packageId":I
    iget-object v0, p0, Lcom/android/systemui/cm/SpamMessageProvider;->mDbHelper:Lcom/android/systemui/cm/SpamOpenHelper;

    invoke-virtual {v0}, Lcom/android/systemui/cm/SpamOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "notifications"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "package_id"

    aput-object v4, v2, v3

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 188
    .local v8, "idCursor":Landroid/database/Cursor;
    if-eqz v8, :cond_2

    .line 189
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 192
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 193
    int-to-long v0, v10

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/cm/SpamMessageProvider;->getPackageName(J)Ljava/lang/String;

    move-result-object v11

    .line 195
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/cm/SpamMessageProvider;->mDbHelper:Lcom/android/systemui/cm/SpamOpenHelper;

    invoke-virtual {v0}, Lcom/android/systemui/cm/SpamOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "notifications"

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    .line 197
    .local v12, "result":I
    invoke-direct {p0, v10}, Lcom/android/systemui/cm/SpamMessageProvider;->removePackageIfNecessary(I)V

    .line 198
    if-eqz v11, :cond_0

    .line 199
    invoke-virtual {p0}, Lcom/android/systemui/cm/SpamMessageProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/util/cm/SpamFilter;->NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "delete"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 181
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 124
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    const-wide/16 v9, -0x1

    const/4 v8, 0x0

    .line 129
    if-nez p2, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-object v8

    .line 132
    :cond_1
    sget-object v5, Lcom/android/systemui/cm/SpamMessageProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 133
    .local v0, "match":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 135
    :pswitch_0
    const-string v5, "message_text"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "msgText":Ljava/lang/String;
    const-string v5, "package_name"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 137
    .local v4, "packageName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 140
    invoke-virtual {p2}, Landroid/content/ContentValues;->clear()V

    .line 141
    const-string v5, "package_name"

    invoke-virtual {p2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-direct {p0, v4}, Lcom/android/systemui/cm/SpamMessageProvider;->getPackageId(Ljava/lang/String;)J

    move-result-wide v2

    .line 143
    .local v2, "packageId":J
    cmp-long v5, v2, v9

    if-nez v5, :cond_2

    .line 144
    iget-object v5, p0, Lcom/android/systemui/cm/SpamMessageProvider;->mDbHelper:Lcom/android/systemui/cm/SpamOpenHelper;

    invoke-virtual {v5}, Lcom/android/systemui/cm/SpamOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "packages"

    invoke-virtual {v5, v6, v8, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 147
    :cond_2
    cmp-long v5, v2, v9

    if-eqz v5, :cond_0

    .line 148
    invoke-virtual {p2}, Landroid/content/ContentValues;->clear()V

    .line 149
    const-string v5, "message_text"

    invoke-virtual {p2, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v5, "normalized_text"

    invoke-static {v1}, Lcom/android/internal/util/cm/SpamFilter;->getNormalizedContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v5, "package_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 153
    const-string v5, "last_blocked"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 154
    iget-object v5, p0, Lcom/android/systemui/cm/SpamMessageProvider;->mDbHelper:Lcom/android/systemui/cm/SpamOpenHelper;

    invoke-virtual {v5}, Lcom/android/systemui/cm/SpamOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "notifications"

    invoke-virtual {v5, v6, v8, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 156
    invoke-direct {p0}, Lcom/android/systemui/cm/SpamMessageProvider;->notifyChange()V

    goto :goto_0

    .line 133
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 44
    new-instance v0, Lcom/android/systemui/cm/SpamOpenHelper;

    invoke-virtual {p0}, Lcom/android/systemui/cm/SpamMessageProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/cm/SpamOpenHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/cm/SpamMessageProvider;->mDbHelper:Lcom/android/systemui/cm/SpamOpenHelper;

    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 14
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 51
    sget-object v2, Lcom/android/systemui/cm/SpamMessageProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v9

    .line 52
    .local v9, "match":I
    packed-switch v9, :pswitch_data_0

    .line 82
    :pswitch_0
    const/4 v13, 0x0

    :goto_0
    return-object v13

    .line 54
    :pswitch_1
    iget-object v2, p0, Lcom/android/systemui/cm/SpamMessageProvider;->mDbHelper:Lcom/android/systemui/cm/SpamOpenHelper;

    invoke-virtual {v2}, Lcom/android/systemui/cm/SpamOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "packages"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "package_name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .local v8, "idCursor":Landroid/database/Cursor;
    move-object v13, v8

    .line 57
    goto :goto_0

    .line 59
    .end local v8    # "idCursor":Landroid/database/Cursor;
    :pswitch_2
    iget-object v2, p0, Lcom/android/systemui/cm/SpamMessageProvider;->mDbHelper:Lcom/android/systemui/cm/SpamOpenHelper;

    invoke-virtual {v2}, Lcom/android/systemui/cm/SpamOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "packages"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .local v11, "pkgCursor":Landroid/database/Cursor;
    move-object v13, v11

    .line 61
    goto :goto_0

    .line 63
    .end local v11    # "pkgCursor":Landroid/database/Cursor;
    :pswitch_3
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 64
    .local v0, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v2, "packages,notifications"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 65
    const-string v12, "packages._id"

    .line 66
    .local v12, "pkgId":Ljava/lang/String;
    const-string v10, "notifications.package_id"

    .line 68
    .local v10, "notificationPkgId":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v2, p0, Lcom/android/systemui/cm/SpamMessageProvider;->mDbHelper:Lcom/android/systemui/cm/SpamOpenHelper;

    invoke-virtual {v2}, Lcom/android/systemui/cm/SpamOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 70
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "notifications.*"

    aput-object v4, v2, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 72
    .local v13, "ret":Landroid/database/Cursor;
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    goto :goto_0

    .line 75
    .end local v0    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v10    # "notificationPkgId":Ljava/lang/String;
    .end local v12    # "pkgId":Ljava/lang/String;
    .end local v13    # "ret":Landroid/database/Cursor;
    :pswitch_4
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 76
    .restart local v0    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v2, "notifications"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v2, p0, Lcom/android/systemui/cm/SpamMessageProvider;->mDbHelper:Lcom/android/systemui/cm/SpamOpenHelper;

    invoke-virtual {v2}, Lcom/android/systemui/cm/SpamOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 79
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 80
    .restart local v13    # "ret":Landroid/database/Cursor;
    goto/16 :goto_0

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 212
    sget-object v2, Lcom/android/systemui/cm/SpamMessageProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 213
    .local v1, "match":I
    packed-switch v1, :pswitch_data_0

    .line 221
    :goto_0
    return v6

    .line 215
    :pswitch_0
    const-string v2, "UPDATE notifications SET last_blocked=%d,count=count+1  WHERE _id=\'%s\'"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "formattedQuery":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/cm/SpamMessageProvider;->mDbHelper:Lcom/android/systemui/cm/SpamOpenHelper;

    invoke-virtual {v2}, Lcom/android/systemui/cm/SpamOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 218
    invoke-direct {p0}, Lcom/android/systemui/cm/SpamMessageProvider;->notifyChange()V

    goto :goto_0

    .line 213
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
