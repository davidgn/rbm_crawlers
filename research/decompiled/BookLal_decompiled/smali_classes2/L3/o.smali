.class public final LL3/o;
.super Lz3/h;
.source "SourceFile"

# interfaces
.implements LH3/f;


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LL3/o;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final c(Lz3/j;)V
    .locals 1

    sget-object v0, LF3/b;->a:LF3/b;

    invoke-interface {p1, v0}, Lz3/j;->a(LB3/b;)V

    iget-object v0, p0, LL3/o;->a:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lz3/j;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LL3/o;->a:Ljava/lang/Object;

    return-object v0
.end method
