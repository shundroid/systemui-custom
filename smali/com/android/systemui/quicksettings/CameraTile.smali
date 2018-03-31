.class public Lcom/android/systemui/quicksettings/CameraTile;
.super Lcom/android/systemui/quicksettings/QuickSettingsTile;
.source "CameraTile.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$OnPrepareListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/quicksettings/CameraTile$Storage;,
        Lcom/android/systemui/quicksettings/CameraTile$CameraOrientationListener;
    }
.end annotation


# instance fields
.field private mAutoFocusRunnable:Ljava/lang/Runnable;

.field private mCamera:Landroid/hardware/Camera;

.field private mCameraBusy:Z

.field private mCameraInfo:Landroid/hardware/Camera$CameraInfo;

.field private mCameraOrientationListener:Lcom/android/systemui/quicksettings/CameraTile$CameraOrientationListener;

.field private mCameraSize:Landroid/hardware/Camera$Size;

.field private mCameraStarted:Z

.field private mDisplayRotation:I

.field private mFlashView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mIconContainer:Landroid/view/View;

.field private mImageNameFormatter:Ljava/text/SimpleDateFormat;

.field private mJpegRotation:I

.field private mOrientation:I

.field private mParams:Landroid/hardware/Camera$Parameters;

.field private mReleaseCameraRunnable:Ljava/lang/Runnable;

.field private mStartRunnable:Ljava/lang/Runnable;

.field private mStorage:Lcom/android/systemui/quicksettings/CameraTile$Storage;

.field private mSurfaceLayout:Landroid/widget/FrameLayout;

.field private mTakePictureRunnable:Ljava/lang/Runnable;

.field private mTextureView:Landroid/view/TextureView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Landroid/os/Handler;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "qsc"    # Lcom/android/systemui/statusbar/phone/QuickSettingsController;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v5, 0x0

    .line 259
    const v4, 0x7f040013

    invoke-direct {p0, p1, p2, v4}, Lcom/android/systemui/quicksettings/QuickSettingsTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;I)V

    .line 73
    iput-object v5, p0, Lcom/android/systemui/quicksettings/CameraTile;->mCameraOrientationListener:Lcom/android/systemui/quicksettings/CameraTile$CameraOrientationListener;

    .line 81
    new-instance v4, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v4}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/quicksettings/CameraTile;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    .line 84
    new-instance v4, Lcom/android/systemui/quicksettings/CameraTile$Storage;

    invoke-direct {v4, p0, v5}, Lcom/android/systemui/quicksettings/CameraTile$Storage;-><init>(Lcom/android/systemui/quicksettings/CameraTile;Lcom/android/systemui/quicksettings/CameraTile$1;)V

    iput-object v4, p0, Lcom/android/systemui/quicksettings/CameraTile;->mStorage:Lcom/android/systemui/quicksettings/CameraTile$Storage;

    .line 87
    new-instance v4, Lcom/android/systemui/quicksettings/CameraTile$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/quicksettings/CameraTile$1;-><init>(Lcom/android/systemui/quicksettings/CameraTile;)V

    iput-object v4, p0, Lcom/android/systemui/quicksettings/CameraTile;->mStartRunnable:Ljava/lang/Runnable;

    .line 156
    new-instance v4, Lcom/android/systemui/quicksettings/CameraTile$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/quicksettings/CameraTile$2;-><init>(Lcom/android/systemui/quicksettings/CameraTile;)V

    iput-object v4, p0, Lcom/android/systemui/quicksettings/CameraTile;->mTakePictureRunnable:Ljava/lang/Runnable;

    .line 222
    new-instance v4, Lcom/android/systemui/quicksettings/CameraTile$3;

    invoke-direct {v4, p0}, Lcom/android/systemui/quicksettings/CameraTile$3;-><init>(Lcom/android/systemui/quicksettings/CameraTile;)V

    iput-object v4, p0, Lcom/android/systemui/quicksettings/CameraTile;->mReleaseCameraRunnable:Ljava/lang/Runnable;

    .line 243
    new-instance v4, Lcom/android/systemui/quicksettings/CameraTile$4;

    invoke-direct {v4, p0}, Lcom/android/systemui/quicksettings/CameraTile$4;-><init>(Lcom/android/systemui/quicksettings/CameraTile;)V

    iput-object v4, p0, Lcom/android/systemui/quicksettings/CameraTile;->mAutoFocusRunnable:Ljava/lang/Runnable;

    .line 260
    iput-object p3, p0, Lcom/android/systemui/quicksettings/CameraTile;->mHandler:Landroid/os/Handler;

    .line 261
    const v4, 0x7f02003e

    iput v4, p0, Lcom/android/systemui/quicksettings/CameraTile;->mDrawable:I

    .line 263
    new-instance v4, Lcom/android/systemui/quicksettings/CameraTile$5;

    invoke-direct {v4, p0}, Lcom/android/systemui/quicksettings/CameraTile$5;-><init>(Lcom/android/systemui/quicksettings/CameraTile;)V

    iput-object v4, p0, Lcom/android/systemui/quicksettings/CameraTile;->mOnLongClick:Landroid/view/View$OnLongClickListener;

    .line 286
    const-string v1, "\'IMG\'_yyyyMMdd_HHmmss"

    .line 288
    .local v1, "imageFileNameFormat":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 289
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const-string v4, "com.android.gallery3d"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 290
    .local v0, "camRes":Landroid/content/res/Resources;
    const-string v4, "image_file_name_format"

    const-string v5, "string"

    const-string v6, "com.android.gallery3d"

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 292
    .local v2, "imageFileNameFormatResId":I
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 299
    .end local v0    # "camRes":Landroid/content/res/Resources;
    .end local v2    # "imageFileNameFormatResId":I
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    new-instance v4, Ljava/text/SimpleDateFormat;

    invoke-direct {v4, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/systemui/quicksettings/CameraTile;->mImageNameFormatter:Ljava/text/SimpleDateFormat;

    .line 300
    return-void

    .line 295
    :catch_0
    move-exception v4

    goto :goto_0

    .line 293
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/systemui/quicksettings/CameraTile;)Landroid/hardware/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/quicksettings/CameraTile;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/quicksettings/CameraTile;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/quicksettings/CameraTile;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/quicksettings/CameraTile;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/quicksettings/CameraTile;->mSurfaceLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/quicksettings/CameraTile;Landroid/hardware/Camera;)Landroid/hardware/Camera;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/quicksettings/CameraTile;
    .param p1, "x1"    # Landroid/hardware/Camera;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/systemui/quicksettings/CameraTile;->mCamera:Landroid/hardware/Camera;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/quicksettings/CameraTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/quicksettings/CameraTile;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/systemui/quicksettings/CameraTile;->mCameraStarted:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/systemui/quicksettings/CameraTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/quicksettings/CameraTile;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/systemui/quicksettings/CameraTile;->mCameraStarted:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/quicksettings/CameraTile;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/quicksettings/CameraTile;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/quicksettings/CameraTile;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/quicksettings/CameraTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/quicksettings/CameraTile;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/systemui/quicksettings/CameraTile;->mCameraBusy:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/systemui/quicksettings/CameraTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/quicksettings/CameraTile;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/systemui/quicksettings/CameraTile;->mCameraBusy:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/systemui/quicksettings/CameraTile;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/quicksettings/CameraTile;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/quicksettings/CameraTile;->mFlashView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/quicksettings/CameraTile;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/quicksettings/CameraTile;

    .prologue
    .line 60
    iget v0, p0, Lcom/android/systemui/quicksettings/CameraTile;->mJpegRotation:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/systemui/quicksettings/CameraTile;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/quicksettings/CameraTile;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/android/systemui/quicksettings/CameraTile;->mJpegRotation:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/systemui/quicksettings/CameraTile;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/quicksettings/CameraTile;

    .prologue
    .line 60
    iget v0, p0, Lcom/android/systemui/quicksettings/CameraTile;->mOrientation:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/systemui/quicksettings/CameraTile;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/quicksettings/CameraTile;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/android/systemui/quicksettings/CameraTile;->mOrientation:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/systemui/quicksettings/CameraTile;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/quicksettings/CameraTile;

    .prologue
    .line 60
    iget v0, p0, Lcom/android/systemui/quicksettings/CameraTile;->mDisplayRotation:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/quicksettings/CameraTile;)Ljava/text/SimpleDateFormat;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/quicksettings/CameraTile;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/quicksettings/CameraTile;->mImageNameFormatter:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/quicksettings/CameraTile;)Lcom/android/systemui/quicksettings/CameraTile$Storage;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/quicksettings/CameraTile;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/quicksettings/CameraTile;->mStorage:Lcom/android/systemui/quicksettings/CameraTile$Storage;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/quicksettings/CameraTile;)Landroid/hardware/Camera$CameraInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/quicksettings/CameraTile;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/quicksettings/CameraTile;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/quicksettings/CameraTile;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/quicksettings/CameraTile;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/quicksettings/CameraTile;->mReleaseCameraRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/quicksettings/CameraTile;)Lcom/android/systemui/quicksettings/CameraTile$CameraOrientationListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/quicksettings/CameraTile;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/quicksettings/CameraTile;->mCameraOrientationListener:Lcom/android/systemui/quicksettings/CameraTile$CameraOrientationListener;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/systemui/quicksettings/CameraTile;Lcom/android/systemui/quicksettings/CameraTile$CameraOrientationListener;)Lcom/android/systemui/quicksettings/CameraTile$CameraOrientationListener;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/quicksettings/CameraTile;
    .param p1, "x1"    # Lcom/android/systemui/quicksettings/CameraTile$CameraOrientationListener;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/systemui/quicksettings/CameraTile;->mCameraOrientationListener:Lcom/android/systemui/quicksettings/CameraTile$CameraOrientationListener;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/systemui/quicksettings/CameraTile;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/quicksettings/CameraTile;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/quicksettings/CameraTile;->mParams:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/systemui/quicksettings/CameraTile;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/quicksettings/CameraTile;
    .param p1, "x1"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/systemui/quicksettings/CameraTile;->mParams:Landroid/hardware/Camera$Parameters;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/systemui/quicksettings/CameraTile;)Landroid/hardware/Camera$Size;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/quicksettings/CameraTile;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/quicksettings/CameraTile;->mCameraSize:Landroid/hardware/Camera$Size;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/systemui/quicksettings/CameraTile;Landroid/hardware/Camera$Size;)Landroid/hardware/Camera$Size;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/quicksettings/CameraTile;
    .param p1, "x1"    # Landroid/hardware/Camera$Size;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/systemui/quicksettings/CameraTile;->mCameraSize:Landroid/hardware/Camera$Size;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/systemui/quicksettings/CameraTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/quicksettings/CameraTile;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/CameraTile;->updateOrientation()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/quicksettings/CameraTile;)Lcom/android/systemui/statusbar/phone/PanelView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/quicksettings/CameraTile;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/CameraTile;->getContainingPanel()Lcom/android/systemui/statusbar/phone/PanelView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/quicksettings/CameraTile;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/quicksettings/CameraTile;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/quicksettings/CameraTile;->mIconContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/quicksettings/CameraTile;)Landroid/view/TextureView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/quicksettings/CameraTile;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/quicksettings/CameraTile;->mTextureView:Landroid/view/TextureView;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/systemui/quicksettings/CameraTile;Landroid/view/TextureView;)Landroid/view/TextureView;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/quicksettings/CameraTile;
    .param p1, "x1"    # Landroid/view/TextureView;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/systemui/quicksettings/CameraTile;->mTextureView:Landroid/view/TextureView;

    return-object p1
.end method

.method private getContainingPanel()Lcom/android/systemui/statusbar/phone/PanelView;
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/systemui/quicksettings/CameraTile;->mContainer:Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;

    .line 341
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_1

    .line 342
    instance-of v1, v0, Lcom/android/systemui/statusbar/phone/PanelView;

    if-eqz v1, :cond_0

    .line 343
    check-cast v0, Lcom/android/systemui/statusbar/phone/PanelView;

    .line 347
    .end local v0    # "parent":Landroid/view/ViewParent;
    :goto_1
    return-object v0

    .line 345
    .restart local v0    # "parent":Landroid/view/ViewParent;
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 347
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateOrientation()V
    .locals 5

    .prologue
    .line 355
    iget-object v3, p0, Lcom/android/systemui/quicksettings/CameraTile;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 356
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 358
    .local v1, "rotation":I
    packed-switch v1, :pswitch_data_0

    .line 361
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/systemui/quicksettings/CameraTile;->mDisplayRotation:I

    .line 376
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/quicksettings/CameraTile;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    iget v3, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 377
    iget-object v3, p0, Lcom/android/systemui/quicksettings/CameraTile;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    iget v3, v3, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iget v4, p0, Lcom/android/systemui/quicksettings/CameraTile;->mDisplayRotation:I

    add-int/2addr v3, v4

    rem-int/lit16 v0, v3, 0x168

    .line 378
    .local v0, "cameraOrientation":I
    rsub-int v3, v0, 0x168

    rem-int/lit16 v0, v3, 0x168

    .line 383
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/quicksettings/CameraTile;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3, v0}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 384
    return-void

    .line 364
    .end local v0    # "cameraOrientation":I
    :pswitch_0
    const/16 v3, 0x5a

    iput v3, p0, Lcom/android/systemui/quicksettings/CameraTile;->mDisplayRotation:I

    goto :goto_0

    .line 367
    :pswitch_1
    const/16 v3, 0xb4

    iput v3, p0, Lcom/android/systemui/quicksettings/CameraTile;->mDisplayRotation:I

    goto :goto_0

    .line 370
    :pswitch_2
    const/16 v3, 0x10e

    iput v3, p0, Lcom/android/systemui/quicksettings/CameraTile;->mDisplayRotation:I

    goto :goto_0

    .line 380
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/quicksettings/CameraTile;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    iget v3, v3, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iget v4, p0, Lcom/android/systemui/quicksettings/CameraTile;->mDisplayRotation:I

    sub-int/2addr v3, v4

    add-int/lit16 v3, v3, 0x168

    rem-int/lit16 v0, v3, 0x168

    .restart local v0    # "cameraOrientation":I
    goto :goto_1

    .line 358
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateTile()V
    .locals 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/systemui/quicksettings/CameraTile;->mContext:Landroid/content/Context;

    const v1, 0x7f09002c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/CameraTile;->mLabel:Ljava/lang/String;

    .line 352
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/systemui/quicksettings/CameraTile;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/android/systemui/quicksettings/CameraTile;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/quicksettings/CameraTile;->mStartRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 322
    :goto_0
    return-void

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/quicksettings/CameraTile;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/quicksettings/CameraTile;->mTakePictureRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method onPostCreate()V
    .locals 2

    .prologue
    .line 304
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/CameraTile;->updateTile()V

    .line 306
    iget-object v0, p0, Lcom/android/systemui/quicksettings/CameraTile;->mTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    const v1, 0x7f080057

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/CameraTile;->mIconContainer:Landroid/view/View;

    .line 307
    iget-object v0, p0, Lcom/android/systemui/quicksettings/CameraTile;->mTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    const v1, 0x7f080058

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/quicksettings/CameraTile;->mSurfaceLayout:Landroid/widget/FrameLayout;

    .line 308
    iget-object v0, p0, Lcom/android/systemui/quicksettings/CameraTile;->mTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    const v1, 0x7f080059

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/quicksettings/CameraTile;->mFlashView:Landroid/view/View;

    .line 310
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->onPostCreate()V

    .line 312
    iget-object v0, p0, Lcom/android/systemui/quicksettings/CameraTile;->mTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setOnPrepareListener(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$OnPrepareListener;)V

    .line 313
    return-void
.end method

.method public onPrepare()V
    .locals 0

    .prologue
    .line 326
    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/systemui/quicksettings/CameraTile;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/quicksettings/CameraTile;->mAutoFocusRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 389
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 412
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/quicksettings/CameraTile;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, p0}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 413
    iget-object v1, p0, Lcom/android/systemui/quicksettings/CameraTile;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 414
    iget-object v1, p0, Lcom/android/systemui/quicksettings/CameraTile;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    .line 415
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/quicksettings/CameraTile;->mCameraStarted:Z

    .line 416
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/quicksettings/CameraTile;->mCameraBusy:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    :goto_0
    return-void

    .line 417
    :catch_0
    move-exception v0

    .line 419
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/android/systemui/quicksettings/CameraTile;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    goto :goto_0
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 430
    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 426
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 436
    return-void
.end method

.method public onUnprepare()V
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/systemui/quicksettings/CameraTile;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/quicksettings/CameraTile;->mReleaseCameraRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 331
    return-void
.end method

.method public updateResources()V
    .locals 0

    .prologue
    .line 335
    invoke-direct {p0}, Lcom/android/systemui/quicksettings/CameraTile;->updateTile()V

    .line 336
    invoke-super {p0}, Lcom/android/systemui/quicksettings/QuickSettingsTile;->updateResources()V

    .line 337
    return-void
.end method
