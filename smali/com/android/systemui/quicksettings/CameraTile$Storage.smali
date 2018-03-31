.class Lcom/android/systemui/quicksettings/CameraTile$Storage;
.super Ljava/lang/Object;
.source "CameraTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/quicksettings/CameraTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Storage"
.end annotation


# instance fields
.field private mRoot:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/quicksettings/CameraTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/quicksettings/CameraTile;)V
    .locals 1

    .prologue
    .line 441
    iput-object p1, p0, Lcom/android/systemui/quicksettings/CameraTile$Storage;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 440
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/CameraTile$Storage;->mRoot:Ljava/lang/String;

    .line 441
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/quicksettings/CameraTile;Lcom/android/systemui/quicksettings/CameraTile$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/quicksettings/CameraTile;
    .param p2, "x1"    # Lcom/android/systemui/quicksettings/CameraTile$1;

    .prologue
    .line 438
    invoke-direct {p0, p1}, Lcom/android/systemui/quicksettings/CameraTile$Storage;-><init>(Lcom/android/systemui/quicksettings/CameraTile;)V

    return-void
.end method

.method private generateDCIM()Ljava/lang/String;
    .locals 3

    .prologue
    .line 528
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/systemui/quicksettings/CameraTile$Storage;->mRoot:Ljava/lang/String;

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private generateFilepath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/quicksettings/CameraTile$Storage;->generateDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addImage(Landroid/content/ContentResolver;Ljava/lang/String;JIILjava/lang/String;II)Landroid/net/Uri;
    .locals 10
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "date"    # J
    .param p5, "orientation"    # I
    .param p6, "jpegLength"    # I
    .param p7, "path"    # Ljava/lang/String;
    .param p8, "width"    # I
    .param p9, "height"    # I

    .prologue
    .line 476
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    move-object/from16 v0, p7

    invoke-direct {v2, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 477
    .local v2, "exif":Landroid/media/ExifInterface;
    const-string v7, "Orientation"

    const/4 v8, -0x1

    invoke-virtual {v2, v7, v8}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 492
    .end local v2    # "exif":Landroid/media/ExifInterface;
    :goto_0
    :pswitch_0
    iget-object v7, p0, Lcom/android/systemui/quicksettings/CameraTile$Storage;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-static {v7}, Lcom/android/systemui/quicksettings/CameraTile;->access$1500(Lcom/android/systemui/quicksettings/CameraTile;)I

    move-result v7

    add-int/2addr v7, p5

    rem-int/lit16 v7, v7, 0xb4

    if-eqz v7, :cond_0

    .line 493
    move/from16 v3, p8

    .line 494
    .local v3, "temp":I
    move/from16 p8, p9

    .line 495
    move/from16 p9, p8

    .line 499
    .end local v3    # "temp":I
    :cond_0
    new-instance v6, Landroid/content/ContentValues;

    const/16 v7, 0x9

    invoke-direct {v6, v7}, Landroid/content/ContentValues;-><init>(I)V

    .line 500
    .local v6, "values":Landroid/content/ContentValues;
    const-string v7, "title"

    invoke-virtual {v6, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    const-string v7, "_display_name"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".jpg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    const-string v7, "datetaken"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 503
    const-string v7, "mime_type"

    const-string v8, "image/jpeg"

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    const-string v7, "orientation"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 507
    const-string v7, "_data"

    move-object/from16 v0, p7

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    const-string v7, "_size"

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 509
    const-string v7, "width"

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 510
    const-string v7, "height"

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 512
    const/4 v5, 0x0

    .line 515
    .local v5, "uri":Landroid/net/Uri;
    :try_start_1
    sget-object v7, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v7, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 524
    :goto_1
    return-object v5

    .line 479
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v6    # "values":Landroid/content/ContentValues;
    .restart local v2    # "exif":Landroid/media/ExifInterface;
    :pswitch_1
    const/16 p5, 0x5a

    .line 480
    goto :goto_0

    .line 482
    :pswitch_2
    const/16 p5, 0xb4

    .line 483
    goto :goto_0

    .line 485
    :pswitch_3
    const/16 p5, 0x10e

    goto :goto_0

    .line 488
    .end local v2    # "exif":Landroid/media/ExifInterface;
    :catch_0
    move-exception v1

    .line 489
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "CameraStorage"

    const-string v8, "Failed to read exif"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 516
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v5    # "uri":Landroid/net/Uri;
    .restart local v6    # "values":Landroid/content/ContentValues;
    :catch_1
    move-exception v4

    .line 522
    .local v4, "th":Ljava/lang/Throwable;
    const-string v7, "CameraStorage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to write MediaStore"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 477
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public addImage(Landroid/content/ContentResolver;Ljava/lang/String;JI[BII)Landroid/net/Uri;
    .locals 11
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "date"    # J
    .param p5, "orientation"    # I
    .param p6, "jpeg"    # [B
    .param p7, "width"    # I
    .param p8, "height"    # I

    .prologue
    .line 466
    move-object/from16 v0, p6

    invoke-virtual {p0, p2, v0}, Lcom/android/systemui/quicksettings/CameraTile$Storage;->writeFile(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v8

    .line 467
    .local v8, "path":Ljava/lang/String;
    move-object/from16 v0, p6

    array-length v7, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move/from16 v6, p5

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-virtual/range {v1 .. v10}, Lcom/android/systemui/quicksettings/CameraTile$Storage;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JIILjava/lang/String;II)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public generateDirectory()Ljava/lang/String;
    .locals 2

    .prologue
    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/systemui/quicksettings/CameraTile$Storage;->generateDCIM()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeFile(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 6
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    .line 444
    invoke-direct {p0, p1}, Lcom/android/systemui/quicksettings/CameraTile$Storage;->generateFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 445
    .local v3, "path":Ljava/lang/String;
    const/4 v1, 0x0

    .line 448
    .local v1, "out":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .local v2, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v2, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 454
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 459
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    :goto_0
    return-object v3

    .line 455
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v4

    move-object v1, v2

    .line 458
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 450
    :catch_1
    move-exception v0

    .line 451
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string v4, "CameraStorage"

    const-string v5, "Failed to write data"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 454
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 455
    :catch_2
    move-exception v4

    goto :goto_0

    .line 453
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 454
    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 457
    :goto_3
    throw v4

    .line 455
    :catch_3
    move-exception v5

    goto :goto_3

    .line 453
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 450
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    goto :goto_1
.end method
