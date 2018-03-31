.class Lcom/android/systemui/quicksettings/EqualizerTile$1;
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
    .line 51
    iput-object p1, p0, Lcom/android/systemui/quicksettings/EqualizerTile$1;->this$0:Lcom/android/systemui/quicksettings/EqualizerTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/systemui/quicksettings/EqualizerTile$1;->this$0:Lcom/android/systemui/quicksettings/EqualizerTile;

    invoke-static {v0}, Lcom/android/systemui/quicksettings/EqualizerTile;->access$000(Lcom/android/systemui/quicksettings/EqualizerTile;)Lcom/android/systemui/quicksettings/QuickTileVisualizer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/android/systemui/quicksettings/EqualizerTile$1;->this$0:Lcom/android/systemui/quicksettings/EqualizerTile;

    invoke-static {v0}, Lcom/android/systemui/quicksettings/EqualizerTile;->access$100(Lcom/android/systemui/quicksettings/EqualizerTile;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/systemui/quicksettings/EqualizerTile$1;->this$0:Lcom/android/systemui/quicksettings/EqualizerTile;

    invoke-static {v0}, Lcom/android/systemui/quicksettings/EqualizerTile;->access$000(Lcom/android/systemui/quicksettings/EqualizerTile;)Lcom/android/systemui/quicksettings/QuickTileVisualizer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/quicksettings/QuickTileVisualizer;->link(I)V

    .line 57
    iget-object v0, p0, Lcom/android/systemui/quicksettings/EqualizerTile$1;->this$0:Lcom/android/systemui/quicksettings/EqualizerTile;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/quicksettings/EqualizerTile;->access$102(Lcom/android/systemui/quicksettings/EqualizerTile;Z)Z

    .line 60
    :cond_0
    return-void
.end method
