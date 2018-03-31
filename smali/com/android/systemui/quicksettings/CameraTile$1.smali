.class Lcom/android/systemui/quicksettings/CameraTile$1;
.super Ljava/lang/Object;
.source "CameraTile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/quicksettings/CameraTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/quicksettings/CameraTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/quicksettings/CameraTile;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/systemui/quicksettings/CameraTile$1;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 90
    iget-object v8, p0, Lcom/android/systemui/quicksettings/CameraTile$1;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-static {v8}, Lcom/android/systemui/quicksettings/CameraTile;->access$100(Lcom/android/systemui/quicksettings/CameraTile;)Landroid/hardware/Camera;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 153
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v8, p0, Lcom/android/systemui/quicksettings/CameraTile$1;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-static {v8}, Lcom/android/systemui/quicksettings/CameraTile;->access$200(Lcom/android/systemui/quicksettings/CameraTile;)Landroid/hardware/Camera$CameraInfo;

    move-result-object v8

    invoke-static {v12, v8}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 97
    :try_start_0
    iget-object v8, p0, Lcom/android/systemui/quicksettings/CameraTile$1;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    const/4 v9, 0x0

    invoke-static {v9}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/systemui/quicksettings/CameraTile;->access$102(Lcom/android/systemui/quicksettings/CameraTile;Landroid/hardware/Camera;)Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    iget-object v8, p0, Lcom/android/systemui/quicksettings/CameraTile$1;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-static {v8}, Lcom/android/systemui/quicksettings/CameraTile;->access$300(Lcom/android/systemui/quicksettings/CameraTile;)Lcom/android/systemui/quicksettings/CameraTile$CameraOrientationListener;

    move-result-object v8

    if-nez v8, :cond_1

    .line 106
    iget-object v8, p0, Lcom/android/systemui/quicksettings/CameraTile$1;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    new-instance v9, Lcom/android/systemui/quicksettings/CameraTile$CameraOrientationListener;

    iget-object v10, p0, Lcom/android/systemui/quicksettings/CameraTile$1;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    iget-object v11, p0, Lcom/android/systemui/quicksettings/CameraTile$1;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    iget-object v11, v11, Lcom/android/systemui/quicksettings/CameraTile;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10, v11}, Lcom/android/systemui/quicksettings/CameraTile$CameraOrientationListener;-><init>(Lcom/android/systemui/quicksettings/CameraTile;Landroid/content/Context;)V

    invoke-static {v8, v9}, Lcom/android/systemui/quicksettings/CameraTile;->access$302(Lcom/android/systemui/quicksettings/CameraTile;Lcom/android/systemui/quicksettings/CameraTile$CameraOrientationListener;)Lcom/android/systemui/quicksettings/CameraTile$CameraOrientationListener;

    .line 108
    :cond_1
    iget-object v8, p0, Lcom/android/systemui/quicksettings/CameraTile$1;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-static {v8}, Lcom/android/systemui/quicksettings/CameraTile;->access$300(Lcom/android/systemui/quicksettings/CameraTile;)Lcom/android/systemui/quicksettings/CameraTile$CameraOrientationListener;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/quicksettings/CameraTile$CameraOrientationListener;->enable()V

    .line 110
    iget-object v8, p0, Lcom/android/systemui/quicksettings/CameraTile$1;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    iget-object v9, p0, Lcom/android/systemui/quicksettings/CameraTile$1;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-static {v9}, Lcom/android/systemui/quicksettings/CameraTile;->access$100(Lcom/android/systemui/quicksettings/CameraTile;)Landroid/hardware/Camera;

    move-result-object v9

    invoke-virtual {v9}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/systemui/quicksettings/CameraTile;->access$402(Lcom/android/systemui/quicksettings/CameraTile;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    .line 113
    iget-object v8, p0, Lcom/android/systemui/quicksettings/CameraTile$1;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-static {v8}, Lcom/android/systemui/quicksettings/CameraTile;->access$400(Lcom/android/systemui/quicksettings/CameraTile;)Landroid/hardware/Camera$Parameters;

    move-result-object v8

    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v6

    .line 114
    .local v6, "previewSize":Landroid/hardware/Camera$Size;
    iget-object v8, p0, Lcom/android/systemui/quicksettings/CameraTile$1;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-static {v8}, Lcom/android/systemui/quicksettings/CameraTile;->access$400(Lcom/android/systemui/quicksettings/CameraTile;)Landroid/hardware/Camera$Parameters;

    move-result-object v8

    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/Camera$Size;

    .line 115
    .local v7, "size":Landroid/hardware/Camera$Size;
    iget v8, v7, Landroid/hardware/Camera$Size;->width:I

    iget-object v9, p0, Lcom/android/systemui/quicksettings/CameraTile$1;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    iget-object v9, v9, Lcom/android/systemui/quicksettings/CameraTile;->mTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->getWidth()I

    move-result v9

    if-le v8, v9, :cond_2

    iget v8, v7, Landroid/hardware/Camera$Size;->height:I

    iget-object v9, p0, Lcom/android/systemui/quicksettings/CameraTile$1;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    iget-object v9, v9, Lcom/android/systemui/quicksettings/CameraTile;->mTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->getHeight()I

    move-result v9

    if-le v8, v9, :cond_2

    iget v8, v7, Landroid/hardware/Camera$Size;->width:I

    iget v9, v6, Landroid/hardware/Camera$Size;->width:I

    if-ge v8, v9, :cond_2

    iget v8, v7, Landroid/hardware/Camera$Size;->height:I

    iget v9, v6, Landroid/hardware/Camera$Size;->height:I

    if-ge v8, v9, :cond_2

    .line 117
    move-object v6, v7

    goto :goto_1

    .line 98
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v6    # "previewSize":Landroid/hardware/Camera$Size;
    .end local v7    # "size":Landroid/hardware/Camera$Size;
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Exception;
    iget-object v8, p0, Lcom/android/systemui/quicksettings/CameraTile$1;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    iget-object v8, v8, Lcom/android/systemui/quicksettings/CameraTile;->mContext:Landroid/content/Context;

    const v9, 0x7f09003b

    invoke-static {v8, v9, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 120
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v6    # "previewSize":Landroid/hardware/Camera$Size;
    :cond_3
    iget-object v8, p0, Lcom/android/systemui/quicksettings/CameraTile$1;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-static {v8}, Lcom/android/systemui/quicksettings/CameraTile;->access$400(Lcom/android/systemui/quicksettings/CameraTile;)Landroid/hardware/Camera$Parameters;

    move-result-object v8

    iget v9, v6, Landroid/hardware/Camera$Size;->width:I

    iget v10, v6, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v8, v9, v10}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 123
    iget-object v8, p0, Lcom/android/systemui/quicksettings/CameraTile$1;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-static {v8}, Lcom/android/systemui/quicksettings/CameraTile;->access$400(Lcom/android/systemui/quicksettings/CameraTile;)Landroid/hardware/Camera$Parameters;

    move-result-object v8

    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v5

    .line 124
    .local v5, "pictureSize":Landroid/hardware/Camera$Size;
    iget-object v8, p0, Lcom/android/systemui/quicksettings/CameraTile$1;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-static {v8}, Lcom/android/systemui/quicksettings/CameraTile;->access$400(Lcom/android/systemui/quicksettings/CameraTile;)Landroid/hardware/Camera$Parameters;

    move-result-object v8

    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/Camera$Size;

    .line 125
    .restart local v7    # "size":Landroid/hardware/Camera$Size;
    iget v8, v7, Landroid/hardware/Camera$Size;->width:I

    iget v9, v5, Landroid/hardware/Camera$Size;->width:I

    if-le v8, v9, :cond_4

    iget v8, v7, Landroid/hardware/Camera$Size;->height:I

    iget v9, v5, Landroid/hardware/Camera$Size;->height:I

    if-le v8, v9, :cond_4

    .line 126
    move-object v5, v7

    goto :goto_2

    .line 129
    .end local v7    # "size":Landroid/hardware/Camera$Size;
    :cond_5
    iget-object v8, p0, Lcom/android/systemui/quicksettings/CameraTile$1;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-static {v8, v5}, Lcom/android/systemui/quicksettings/CameraTile;->access$502(Lcom/android/systemui/quicksettings/CameraTile;Landroid/hardware/Camera$Size;)Landroid/hardware/Camera$Size;

    .line 130
    iget-object v8, p0, Lcom/android/systemui/quicksettings/CameraTile$1;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-static {v8}, Lcom/android/systemui/quicksettings/CameraTile;->access$400(Lcom/android/systemui/quicksettings/CameraTile;)Landroid/hardware/Camera$Parameters;

    move-result-object v8

    iget v9, v5, Landroid/hardware/Camera$Size;->width:I

    iget v10, v5, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v8, v9, v10}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 133
    iget-object v8, p0, Lcom/android/systemui/quicksettings/CameraTile$1;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-static {v8}, Lcom/android/systemui/quicksettings/CameraTile;->access$400(Lcom/android/systemui/quicksettings/CameraTile;)Landroid/hardware/Camera$Parameters;

    move-result-object v8

    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    .line 134
    .local v1, "focusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v8, "continuous-picture"

    invoke-interface {v1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 135
    iget-object v8, p0, Lcom/android/systemui/quicksettings/CameraTile$1;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-static {v8}, Lcom/android/systemui/quicksettings/CameraTile;->access$400(Lcom/android/systemui/quicksettings/CameraTile;)Landroid/hardware/Camera$Parameters;

    move-result-object v8

    const-string v9, "continuous-picture"

    invoke-virtual {v8, v9}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 142
    :cond_6
    :goto_3
    iget-object v8, p0, Lcom/android/systemui/quicksettings/CameraTile$1;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-static {v8}, Lcom/android/systemui/quicksettings/CameraTile;->access$100(Lcom/android/systemui/quicksettings/CameraTile;)Landroid/hardware/Camera;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/quicksettings/CameraTile$1;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-static {v9}, Lcom/android/systemui/quicksettings/CameraTile;->access$400(Lcom/android/systemui/quicksettings/CameraTile;)Landroid/hardware/Camera$Parameters;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 143
    iget-object v8, p0, Lcom/android/systemui/quicksettings/CameraTile$1;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-static {v8}, Lcom/android/systemui/quicksettings/CameraTile;->access$600(Lcom/android/systemui/quicksettings/CameraTile;)V

    .line 145
    iget-object v8, p0, Lcom/android/systemui/quicksettings/CameraTile$1;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-static {v8}, Lcom/android/systemui/quicksettings/CameraTile;->access$700(Lcom/android/systemui/quicksettings/CameraTile;)Lcom/android/systemui/statusbar/phone/PanelView;

    move-result-object v3

    .line 146
    .local v3, "panel":Lcom/android/systemui/statusbar/phone/PanelView;
    iget-object v8, p0, Lcom/android/systemui/quicksettings/CameraTile$1;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    iget-object v8, v8, Lcom/android/systemui/quicksettings/CameraTile;->mContainer:Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 148
    .local v4, "parent":Landroid/view/View;
    iget-object v8, p0, Lcom/android/systemui/quicksettings/CameraTile$1;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-static {v8}, Lcom/android/systemui/quicksettings/CameraTile;->access$800(Lcom/android/systemui/quicksettings/CameraTile;)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 149
    iget-object v8, p0, Lcom/android/systemui/quicksettings/CameraTile$1;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    new-instance v9, Landroid/view/TextureView;

    iget-object v10, p0, Lcom/android/systemui/quicksettings/CameraTile$1;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    iget-object v10, v10, Lcom/android/systemui/quicksettings/CameraTile;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    invoke-static {v8, v9}, Lcom/android/systemui/quicksettings/CameraTile;->access$902(Lcom/android/systemui/quicksettings/CameraTile;Landroid/view/TextureView;)Landroid/view/TextureView;

    .line 150
    iget-object v8, p0, Lcom/android/systemui/quicksettings/CameraTile$1;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-static {v8}, Lcom/android/systemui/quicksettings/CameraTile;->access$900(Lcom/android/systemui/quicksettings/CameraTile;)Landroid/view/TextureView;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/view/TextureView;->setVisibility(I)V

    .line 151
    iget-object v8, p0, Lcom/android/systemui/quicksettings/CameraTile$1;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-static {v8}, Lcom/android/systemui/quicksettings/CameraTile;->access$1000(Lcom/android/systemui/quicksettings/CameraTile;)Landroid/widget/FrameLayout;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/quicksettings/CameraTile$1;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-static {v9}, Lcom/android/systemui/quicksettings/CameraTile;->access$900(Lcom/android/systemui/quicksettings/CameraTile;)Landroid/view/TextureView;

    move-result-object v9

    invoke-virtual {v8, v9, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 152
    iget-object v8, p0, Lcom/android/systemui/quicksettings/CameraTile$1;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-static {v8}, Lcom/android/systemui/quicksettings/CameraTile;->access$900(Lcom/android/systemui/quicksettings/CameraTile;)Landroid/view/TextureView;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/quicksettings/CameraTile$1;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-virtual {v8, v9}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    goto/16 :goto_0

    .line 136
    .end local v3    # "panel":Lcom/android/systemui/statusbar/phone/PanelView;
    .end local v4    # "parent":Landroid/view/View;
    :cond_7
    const-string v8, "continuous-video"

    invoke-interface {v1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 137
    iget-object v8, p0, Lcom/android/systemui/quicksettings/CameraTile$1;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-static {v8}, Lcom/android/systemui/quicksettings/CameraTile;->access$400(Lcom/android/systemui/quicksettings/CameraTile;)Landroid/hardware/Camera$Parameters;

    move-result-object v8

    const-string v9, "continuous-video"

    invoke-virtual {v8, v9}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_3

    .line 138
    :cond_8
    const-string v8, "auto"

    invoke-interface {v1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 139
    iget-object v8, p0, Lcom/android/systemui/quicksettings/CameraTile$1;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-static {v8}, Lcom/android/systemui/quicksettings/CameraTile;->access$400(Lcom/android/systemui/quicksettings/CameraTile;)Landroid/hardware/Camera$Parameters;

    move-result-object v8

    const-string v9, "auto"

    invoke-virtual {v8, v9}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto/16 :goto_3
.end method
