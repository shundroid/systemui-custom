.class Lcom/android/systemui/quicksettings/EqualizerTile$2;
.super Ljava/lang/Object;
.source "EqualizerTile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/quicksettings/EqualizerTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/quicksettings/EqualizerTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/quicksettings/EqualizerTile;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/systemui/quicksettings/EqualizerTile$2;->this$0:Lcom/android/systemui/quicksettings/EqualizerTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/systemui/quicksettings/EqualizerTile$2;->this$0:Lcom/android/systemui/quicksettings/EqualizerTile;

    invoke-static {v0}, Lcom/android/systemui/quicksettings/EqualizerTile;->access$000(Lcom/android/systemui/quicksettings/EqualizerTile;)Lcom/android/systemui/quicksettings/QuickTileVisualizer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/systemui/quicksettings/EqualizerTile$2;->this$0:Lcom/android/systemui/quicksettings/EqualizerTile;

    invoke-static {v0}, Lcom/android/systemui/quicksettings/EqualizerTile;->access$100(Lcom/android/systemui/quicksettings/EqualizerTile;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/systemui/quicksettings/EqualizerTile$2;->this$0:Lcom/android/systemui/quicksettings/EqualizerTile;

    invoke-static {v0}, Lcom/android/systemui/quicksettings/EqualizerTile;->access$000(Lcom/android/systemui/quicksettings/EqualizerTile;)Lcom/android/systemui/quicksettings/QuickTileVisualizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/quicksettings/QuickTileVisualizer;->unlink()V

    .line 69
    iget-object v0, p0, Lcom/android/systemui/quicksettings/EqualizerTile$2;->this$0:Lcom/android/systemui/quicksettings/EqualizerTile;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/quicksettings/EqualizerTile;->access$102(Lcom/android/systemui/quicksettings/EqualizerTile;Z)Z

    .line 72
    :cond_0
    return-void
.end method
