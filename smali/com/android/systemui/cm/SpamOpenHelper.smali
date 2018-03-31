.class public Lcom/android/systemui/cm/SpamOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SpamOpenHelper.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    const-string v0, "spam.db"

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 31
    iput-object p1, p0, Lcom/android/systemui/cm/SpamOpenHelper;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 36
    const-string v0, "create table packages(_id INTEGER PRIMARY KEY,package_name TEXT UNIQUE);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 37
    const-string v0, "create table notifications(_id INTEGER PRIMARY KEY AUTOINCREMENT,package_id INTEGER,message_text STRING,last_blocked INTEGER,normalized_text STRING,count INTEGER DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/systemui/cm/SpamOpenHelper;->mContext:Landroid/content/Context;

    const-string v1, "spam.db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 43
    invoke-virtual {p0, p1}, Lcom/android/systemui/cm/SpamOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 44
    return-void
.end method
