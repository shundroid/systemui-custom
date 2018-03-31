.class Lcom/android/systemui/quicksettings/CameraTile$2$2;
.super Ljava/lang/Object;
.source "CameraTile.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/quicksettings/CameraTile$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/quicksettings/CameraTile$2;


# direct methods
.method constructor <init>(Lcom/android/systemui/quicksettings/CameraTile$2;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/systemui/quicksettings/CameraTile$2$2;->this$1:Lcom/android/systemui/quicksettings/CameraTile$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 9
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/systemui/quicksettings/CameraTile$2$2;->this$1:Lcom/android/systemui/quicksettings/CameraTile$2;

    iget-object v0, v0, Lcom/android/systemui/quicksettings/CameraTile$2;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/quicksettings/CameraTile;->access$1302(Lcom/android/systemui/quicksettings/CameraTile;Z)Z

    .line 204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 205
    .local v3, "time":J
    iget-object v0, p0, Lcom/android/systemui/quicksettings/CameraTile$2$2;->this$1:Lcom/android/systemui/quicksettings/CameraTile$2;

    iget-object v0, v0, Lcom/android/systemui/quicksettings/CameraTile$2;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-static {v0}, Lcom/android/systemui/quicksettings/CameraTile;->access$1600(Lcom/android/systemui/quicksettings/CameraTile;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/quicksettings/CameraTile$2$2;->this$1:Lcom/android/systemui/quicksettings/CameraTile$2;

    iget-object v1, v1, Lcom/android/systemui/quicksettings/CameraTile$2;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-static {v1}, Lcom/android/systemui/quicksettings/CameraTile;->access$1700(Lcom/android/systemui/quicksettings/CameraTile;)I

    move-result v1

    add-int/2addr v0, v1

    rem-int/lit16 v5, v0, 0x168

    .line 207
    .local v5, "orientation":I
    iget-object v0, p0, Lcom/android/systemui/quicksettings/CameraTile$2$2;->this$1:Lcom/android/systemui/quicksettings/CameraTile$2;

    iget-object v0, v0, Lcom/android/systemui/quicksettings/CameraTile$2;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-static {v0}, Lcom/android/systemui/quicksettings/CameraTile;->access$1900(Lcom/android/systemui/quicksettings/CameraTile;)Lcom/android/systemui/quicksettings/CameraTile$Storage;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/quicksettings/CameraTile$2$2;->this$1:Lcom/android/systemui/quicksettings/CameraTile$2;

    iget-object v1, v1, Lcom/android/systemui/quicksettings/CameraTile$2;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    iget-object v1, v1, Lcom/android/systemui/quicksettings/CameraTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/quicksettings/CameraTile$2$2;->this$1:Lcom/android/systemui/quicksettings/CameraTile$2;

    iget-object v2, v2, Lcom/android/systemui/quicksettings/CameraTile$2;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-static {v2}, Lcom/android/systemui/quicksettings/CameraTile;->access$1800(Lcom/android/systemui/quicksettings/CameraTile;)Ljava/text/SimpleDateFormat;

    move-result-object v2

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/android/systemui/quicksettings/CameraTile$2$2;->this$1:Lcom/android/systemui/quicksettings/CameraTile$2;

    iget-object v6, v6, Lcom/android/systemui/quicksettings/CameraTile$2;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-static {v6}, Lcom/android/systemui/quicksettings/CameraTile;->access$500(Lcom/android/systemui/quicksettings/CameraTile;)Landroid/hardware/Camera$Size;

    move-result-object v6

    iget v7, v6, Landroid/hardware/Camera$Size;->width:I

    iget-object v6, p0, Lcom/android/systemui/quicksettings/CameraTile$2$2;->this$1:Lcom/android/systemui/quicksettings/CameraTile$2;

    iget-object v6, v6, Lcom/android/systemui/quicksettings/CameraTile$2;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-static {v6}, Lcom/android/systemui/quicksettings/CameraTile;->access$500(Lcom/android/systemui/quicksettings/CameraTile;)Landroid/hardware/Camera$Size;

    move-result-object v6

    iget v8, v6, Landroid/hardware/Camera$Size;->height:I

    move-object v6, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/systemui/quicksettings/CameraTile$Storage;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JI[BII)Landroid/net/Uri;

    .line 212
    iget-object v0, p0, Lcom/android/systemui/quicksettings/CameraTile$2$2;->this$1:Lcom/android/systemui/quicksettings/CameraTile$2;

    iget-object v0, v0, Lcom/android/systemui/quicksettings/CameraTile$2;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-static {v0}, Lcom/android/systemui/quicksettings/CameraTile;->access$100(Lcom/android/systemui/quicksettings/CameraTile;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 213
    return-void
.end method
