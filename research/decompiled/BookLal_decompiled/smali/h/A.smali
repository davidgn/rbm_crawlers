.class public final synthetic Lh/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM/k;


# instance fields
.field public final synthetic a:Lh/B;


# direct methods
.method public synthetic constructor <init>(Lh/B;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh/A;->a:Lh/B;

    return-void
.end method


# virtual methods
.method public final superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lh/A;->a:Lh/B;

    invoke-virtual {v0, p1}, Lh/B;->e(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
