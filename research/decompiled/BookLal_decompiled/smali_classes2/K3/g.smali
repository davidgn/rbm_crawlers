.class public final LK3/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LT4/b;


# instance fields
.field public final a:Lz3/g;

.field public final b:Ljava/lang/Object;

.field public c:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lz3/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK3/g;->b:Ljava/lang/Object;

    iput-object p2, p0, LK3/g;->a:Lz3/g;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 0

    return-void
.end method

.method public final f(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    iget-boolean p1, p0, LK3/g;->c:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, LK3/g;->c:Z

    iget-object p1, p0, LK3/g;->b:Ljava/lang/Object;

    iget-object p2, p0, LK3/g;->a:Lz3/g;

    invoke-interface {p2, p1}, Lz3/g;->onNext(Ljava/lang/Object;)V

    invoke-interface {p2}, Lz3/g;->onComplete()V

    :cond_0
    return-void
.end method
