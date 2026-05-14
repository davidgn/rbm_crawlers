.class public final LM/X;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/OnReceiveContentListener;


# instance fields
.field public final a:LM/y;


# direct methods
.method public constructor <init>(LM/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM/X;->a:LM/y;

    return-void
.end method


# virtual methods
.method public final onReceiveContent(Landroid/view/View;Landroid/view/ContentInfo;)Landroid/view/ContentInfo;
    .locals 2

    new-instance v0, LM/g;

    new-instance v1, LK0/j;

    invoke-direct {v1, p2}, LK0/j;-><init>(Landroid/view/ContentInfo;)V

    invoke-direct {v0, v1}, LM/g;-><init>(LM/f;)V

    iget-object v1, p0, LM/X;->a:LM/y;

    check-cast v1, LS/q;

    invoke-virtual {v1, p1, v0}, LS/q;->a(Landroid/view/View;LM/g;)LM/g;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-ne p1, v0, :cond_1

    return-object p2

    :cond_1
    iget-object p1, p1, LM/g;->a:LM/f;

    invoke-interface {p1}, LM/f;->i()Landroid/view/ContentInfo;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, LM/c;->p(Ljava/lang/Object;)Landroid/view/ContentInfo;

    move-result-object p1

    return-object p1
.end method
