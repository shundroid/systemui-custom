.class Lcom/android/systemui/quicksettings/AutoRotateTile$2;
.super Ljava/lang/Object;
.source "AutoRotateTile.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/quicksettings/AutoRotateTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/quicksettings/AutoRotateTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/quicksettings/AutoRotateTile;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/systemui/quicksettings/AutoRotateTile$2;->this$0:Lcom/android/systemui/quicksettings/AutoRotateTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/systemui/quicksettings/AutoRotateTile$2;->this$0:Lcom/android/systemui/quicksettings/AutoRotateTile;

    const-string v1, "android.settings.DISPLAY_SETTINGS"

    invoke-virtual {v0, v1}, Lcom/android/systemui/quicksettings/AutoRotateTile;->startSettingsActivity(Ljava/lang/String;)V

    .line 45
    const/4 v0, 0x1

    return v0
.end method
