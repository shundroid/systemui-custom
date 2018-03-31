.class Lcom/android/systemui/quicksettings/PerformanceProfileTile$1;
.super Ljava/lang/Object;
.source "PerformanceProfileTile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/quicksettings/PerformanceProfileTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/quicksettings/PerformanceProfileTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/quicksettings/PerformanceProfileTile;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/systemui/quicksettings/PerformanceProfileTile$1;->this$0:Lcom/android/systemui/quicksettings/PerformanceProfileTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/quicksettings/PerformanceProfileTile$1;->this$0:Lcom/android/systemui/quicksettings/PerformanceProfileTile;

    invoke-static {v0}, Lcom/android/systemui/quicksettings/PerformanceProfileTile;->access$000(Lcom/android/systemui/quicksettings/PerformanceProfileTile;)V

    .line 64
    return-void
.end method
