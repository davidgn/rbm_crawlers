.class public final Lt4/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb4/g;


# instance fields
.field public final a:Lkotlin/jvm/internal/j;

.field public final b:Lb4/g;


# direct methods
.method public constructor <init>(Lb4/g;Lk4/l;)V
    .locals 1

    const-string v0, "baseKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p2, Lkotlin/jvm/internal/j;

    iput-object p2, p0, Lt4/r;->a:Lkotlin/jvm/internal/j;

    instance-of p2, p1, Lt4/r;

    if-eqz p2, :cond_0

    check-cast p1, Lt4/r;

    iget-object p1, p1, Lt4/r;->b:Lb4/g;

    :cond_0
    iput-object p1, p0, Lt4/r;->b:Lb4/g;

    return-void
.end method
