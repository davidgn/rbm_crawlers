.class public final LL3/n;
.super Lz3/q;
.source "SourceFile"


# instance fields
.field public final a:LL3/g;


# direct methods
.method public constructor <init>(LL3/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LL3/n;->a:LL3/g;

    return-void
.end method


# virtual methods
.method public final c(Lz3/r;)V
    .locals 2

    new-instance v0, LL3/l;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, LL3/l;-><init>(Ljava/lang/Object;I)V

    iget-object p1, p0, LL3/n;->a:LL3/g;

    invoke-virtual {p1, v0}, Lz3/h;->b(Lz3/j;)V

    return-void
.end method
