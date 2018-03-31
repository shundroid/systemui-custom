.class public Lcom/pheelicks/visualizer/VisualizerView;
.super Landroid/view/View;
.source "VisualizerView.java"


# instance fields
.field private mAudioSessionId:I

.field private mBytes:[B

.field mCanvas:Landroid/graphics/Canvas;

.field mCanvasBitmap:Landroid/graphics/Bitmap;

.field private mFFTBytes:[B

.field private mFadePaint:Landroid/graphics/Paint;

.field mFlash:Z

.field private mFlashPaint:Landroid/graphics/Paint;

.field private mRect:Landroid/graphics/Rect;

.field private mRenderers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/pheelicks/visualizer/renderer/Renderer;",
            ">;"
        }
    .end annotation
.end field

.field private mVisualizer:Landroid/media/audiofx/Visualizer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/pheelicks/visualizer/VisualizerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/pheelicks/visualizer/VisualizerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/pheelicks/visualizer/VisualizerView;->mRect:Landroid/graphics/Rect;

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/pheelicks/visualizer/VisualizerView;->mFlashPaint:Landroid/graphics/Paint;

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/pheelicks/visualizer/VisualizerView;->mFadePaint:Landroid/graphics/Paint;

    .line 191
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pheelicks/visualizer/VisualizerView;->mFlash:Z

    .line 57
    invoke-direct {p0}, Lcom/pheelicks/visualizer/VisualizerView;->init()V

    .line 58
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/16 v2, 0xff

    .line 71
    iput-object v0, p0, Lcom/pheelicks/visualizer/VisualizerView;->mBytes:[B

    .line 72
    iput-object v0, p0, Lcom/pheelicks/visualizer/VisualizerView;->mFFTBytes:[B

    .line 74
    iget-object v0, p0, Lcom/pheelicks/visualizer/VisualizerView;->mFlashPaint:Landroid/graphics/Paint;

    const/16 v1, 0x7a

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    iget-object v0, p0, Lcom/pheelicks/visualizer/VisualizerView;->mFadePaint:Landroid/graphics/Paint;

    const/16 v1, 0xc8

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    iget-object v0, p0, Lcom/pheelicks/visualizer/VisualizerView;->mFadePaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 81
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/pheelicks/visualizer/VisualizerView;->mRenderers:Ljava/util/Set;

    .line 82
    return-void
.end method


# virtual methods
.method public addRenderer(Lcom/pheelicks/visualizer/renderer/Renderer;)V
    .locals 1
    .param p1, "renderer"    # Lcom/pheelicks/visualizer/renderer/Renderer;

    .prologue
    .line 147
    if-eqz p1, :cond_0

    .line 149
    iget-object v0, p0, Lcom/pheelicks/visualizer/VisualizerView;->mRenderers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_0
    return-void
.end method

.method public link(I)V
    .locals 8
    .param p1, "audioSessionId"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 91
    iget-object v2, p0, Lcom/pheelicks/visualizer/VisualizerView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/pheelicks/visualizer/VisualizerView;->mAudioSessionId:I

    if-eq p1, v2, :cond_0

    .line 92
    iget-object v2, p0, Lcom/pheelicks/visualizer/VisualizerView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v2, v5}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    .line 93
    iget-object v2, p0, Lcom/pheelicks/visualizer/VisualizerView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v2}, Landroid/media/audiofx/Visualizer;->release()V

    .line 94
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/pheelicks/visualizer/VisualizerView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    .line 97
    :cond_0
    const-string v2, "VisualizerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iput p1, p0, Lcom/pheelicks/visualizer/VisualizerView;->mAudioSessionId:I

    .line 100
    iget-object v2, p0, Lcom/pheelicks/visualizer/VisualizerView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    if-nez v2, :cond_1

    .line 104
    :try_start_0
    new-instance v2, Landroid/media/audiofx/Visualizer;

    invoke-direct {v2, p1}, Landroid/media/audiofx/Visualizer;-><init>(I)V

    iput-object v2, p0, Lcom/pheelicks/visualizer/VisualizerView;->mVisualizer:Landroid/media/audiofx/Visualizer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    iget-object v2, p0, Lcom/pheelicks/visualizer/VisualizerView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v2, v5}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    .line 110
    iget-object v2, p0, Lcom/pheelicks/visualizer/VisualizerView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-static {}, Landroid/media/audiofx/Visualizer;->getCaptureSizeRange()[I

    move-result-object v3

    aget v3, v3, v7

    invoke-virtual {v2, v3}, Landroid/media/audiofx/Visualizer;->setCaptureSize(I)I

    .line 113
    new-instance v0, Lcom/pheelicks/visualizer/VisualizerView$1;

    invoke-direct {v0, p0}, Lcom/pheelicks/visualizer/VisualizerView$1;-><init>(Lcom/pheelicks/visualizer/VisualizerView;)V

    .line 130
    .local v0, "captureListener":Landroid/media/audiofx/Visualizer$OnDataCaptureListener;
    iget-object v2, p0, Lcom/pheelicks/visualizer/VisualizerView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-static {}, Landroid/media/audiofx/Visualizer;->getMaxCaptureRate()I

    move-result v3

    int-to-double v3, v3

    const-wide/high16 v5, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-virtual {v2, v0, v3, v7, v7}, Landroid/media/audiofx/Visualizer;->setDataCaptureListener(Landroid/media/audiofx/Visualizer$OnDataCaptureListener;IZZ)I

    .line 134
    .end local v0    # "captureListener":Landroid/media/audiofx/Visualizer$OnDataCaptureListener;
    :cond_1
    iget-object v2, p0, Lcom/pheelicks/visualizer/VisualizerView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v2, v7}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    .line 135
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v1

    .line 106
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "VisualizerView"

    const-string v3, "Error enabling visualizer!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    .line 207
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 210
    iget-object v4, p0, Lcom/pheelicks/visualizer/VisualizerView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/pheelicks/visualizer/VisualizerView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/pheelicks/visualizer/VisualizerView;->getHeight()I

    move-result v6

    invoke-virtual {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 212
    iget-object v4, p0, Lcom/pheelicks/visualizer/VisualizerView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_0

    .line 214
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/pheelicks/visualizer/VisualizerView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    .line 217
    :cond_0
    iget-object v4, p0, Lcom/pheelicks/visualizer/VisualizerView;->mCanvas:Landroid/graphics/Canvas;

    if-nez v4, :cond_1

    .line 219
    new-instance v4, Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/pheelicks/visualizer/VisualizerView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v4, p0, Lcom/pheelicks/visualizer/VisualizerView;->mCanvas:Landroid/graphics/Canvas;

    .line 222
    :cond_1
    iget-object v4, p0, Lcom/pheelicks/visualizer/VisualizerView;->mBytes:[B

    if-eqz v4, :cond_2

    .line 224
    new-instance v0, Lcom/pheelicks/visualizer/AudioData;

    iget-object v4, p0, Lcom/pheelicks/visualizer/VisualizerView;->mBytes:[B

    invoke-direct {v0, v4}, Lcom/pheelicks/visualizer/AudioData;-><init>([B)V

    .line 225
    .local v0, "audioData":Lcom/pheelicks/visualizer/AudioData;
    iget-object v4, p0, Lcom/pheelicks/visualizer/VisualizerView;->mRenderers:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pheelicks/visualizer/renderer/Renderer;

    .line 227
    .local v3, "r":Lcom/pheelicks/visualizer/renderer/Renderer;
    iget-object v4, p0, Lcom/pheelicks/visualizer/VisualizerView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/pheelicks/visualizer/VisualizerView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4, v0, v5}, Lcom/pheelicks/visualizer/renderer/Renderer;->render(Landroid/graphics/Canvas;Lcom/pheelicks/visualizer/AudioData;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 231
    .end local v0    # "audioData":Lcom/pheelicks/visualizer/AudioData;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "r":Lcom/pheelicks/visualizer/renderer/Renderer;
    :cond_2
    iget-object v4, p0, Lcom/pheelicks/visualizer/VisualizerView;->mFFTBytes:[B

    if-eqz v4, :cond_3

    .line 233
    new-instance v1, Lcom/pheelicks/visualizer/FFTData;

    iget-object v4, p0, Lcom/pheelicks/visualizer/VisualizerView;->mFFTBytes:[B

    invoke-direct {v1, v4}, Lcom/pheelicks/visualizer/FFTData;-><init>([B)V

    .line 234
    .local v1, "fftData":Lcom/pheelicks/visualizer/FFTData;
    iget-object v4, p0, Lcom/pheelicks/visualizer/VisualizerView;->mRenderers:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pheelicks/visualizer/renderer/Renderer;

    .line 236
    .restart local v3    # "r":Lcom/pheelicks/visualizer/renderer/Renderer;
    iget-object v4, p0, Lcom/pheelicks/visualizer/VisualizerView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/pheelicks/visualizer/VisualizerView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4, v1, v5}, Lcom/pheelicks/visualizer/renderer/Renderer;->render(Landroid/graphics/Canvas;Lcom/pheelicks/visualizer/FFTData;Landroid/graphics/Rect;)V

    goto :goto_1

    .line 241
    .end local v1    # "fftData":Lcom/pheelicks/visualizer/FFTData;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "r":Lcom/pheelicks/visualizer/renderer/Renderer;
    :cond_3
    iget-object v4, p0, Lcom/pheelicks/visualizer/VisualizerView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/pheelicks/visualizer/VisualizerView;->mFadePaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 243
    iget-boolean v4, p0, Lcom/pheelicks/visualizer/VisualizerView;->mFlash:Z

    if-eqz v4, :cond_4

    .line 245
    iput-boolean v7, p0, Lcom/pheelicks/visualizer/VisualizerView;->mFlash:Z

    .line 246
    iget-object v4, p0, Lcom/pheelicks/visualizer/VisualizerView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/pheelicks/visualizer/VisualizerView;->mFlashPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 249
    :cond_4
    iget-object v4, p0, Lcom/pheelicks/visualizer/VisualizerView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {p1, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 250
    return-void
.end method

.method public unlink()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/pheelicks/visualizer/VisualizerView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/pheelicks/visualizer/VisualizerView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    .line 140
    iget-object v0, p0, Lcom/pheelicks/visualizer/VisualizerView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v0}, Landroid/media/audiofx/Visualizer;->release()V

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pheelicks/visualizer/VisualizerView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    .line 143
    :cond_0
    return-void
.end method

.method public updateVisualizer([B)V
    .locals 0
    .param p1, "bytes"    # [B

    .prologue
    .line 175
    iput-object p1, p0, Lcom/pheelicks/visualizer/VisualizerView;->mBytes:[B

    .line 176
    invoke-virtual {p0}, Lcom/pheelicks/visualizer/VisualizerView;->invalidate()V

    .line 177
    return-void
.end method

.method public updateVisualizerFFT([B)V
    .locals 0
    .param p1, "bytes"    # [B

    .prologue
    .line 187
    iput-object p1, p0, Lcom/pheelicks/visualizer/VisualizerView;->mFFTBytes:[B

    .line 188
    invoke-virtual {p0}, Lcom/pheelicks/visualizer/VisualizerView;->invalidate()V

    .line 189
    return-void
.end method
