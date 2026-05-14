.class public final Ll2/e;
.super Ll2/b;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ll2/g;


# direct methods
.method public constructor <init>(Ll2/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll2/e;->a:Ll2/g;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final b(Landroid/view/View;I)V
    .locals 0

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Ll2/e;->a:Ll2/g;

    invoke-virtual {p1}, Ll2/g;->cancel()V

    :cond_0
    return-void
.end method
