.class public final LA2/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LA2/j;


# instance fields
.field public final synthetic a:LA2/n;


# direct methods
.method public synthetic constructor <init>(LA2/n;)V
    .locals 0

    iput-object p1, p0, LA2/i;->a:LA2/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, LA2/i;->a:LA2/n;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, LA2/n;->a(I)V

    return-void
.end method
