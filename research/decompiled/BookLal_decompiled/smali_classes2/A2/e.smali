.class public final LA2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM/x;
.implements LA2/k;


# instance fields
.field public final synthetic a:LA2/n;


# direct methods
.method public synthetic constructor <init>(LA2/n;)V
    .locals 0

    iput-object p1, p0, LA2/e;->a:LA2/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Landroid/view/View;LM/z0;)LM/z0;
    .locals 1

    invoke-virtual {p2}, LM/z0;->a()I

    move-result p1

    iget-object v0, p0, LA2/e;->a:LA2/n;

    iput p1, v0, LA2/n;->h:I

    invoke-virtual {p2}, LM/z0;->b()I

    move-result p1

    iput p1, v0, LA2/n;->i:I

    invoke-virtual {p2}, LM/z0;->c()I

    move-result p1

    iput p1, v0, LA2/n;->j:I

    invoke-virtual {v0}, LA2/n;->e()V

    return-object p2
.end method
