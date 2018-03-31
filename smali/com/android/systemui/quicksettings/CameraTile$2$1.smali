.class Lcom/android/systemui/quicksettings/CameraTile$2$1;
.super Ljava/lang/Object;
.source "CameraTile.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 179
    iput-object p1, p0, Lcom/android/systemui/quicksettings/CameraTile$2$1;->this$1:Lcom/android/systemui/quicksettings/CameraTile$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/systemui/quicksettings/CameraTile$2$1;->this$1:Lcom/android/systemui/quicksettings/CameraTile$2;

    iget-object v0, v0, Lcom/android/systemui/quicksettings/CameraTile$2;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-static {v0}, Lcom/android/systemui/quicksettings/CameraTile;->access$1400(Lcom/android/systemui/quicksettings/CameraTile;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/android/systemui/quicksettings/CameraTile$2$1;->this$1:Lcom/android/systemui/quicksettings/CameraTile$2;

    iget-object v0, v0, Lcom/android/systemui/quicksettings/CameraTile$2;->this$0:Lcom/android/systemui/quicksettings/CameraTile;

    invoke-static {v0}, Lcom/android/systemui/quicksettings/CameraTile;->access$1400(Lcom/android/systemui/quicksettings/CameraTile;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 184
    return-void
.end method
