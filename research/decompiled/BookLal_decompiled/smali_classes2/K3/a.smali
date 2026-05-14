.class public abstract LK3/a;
.super Lz3/d;
.source "SourceFile"


# instance fields
.field public final b:Lz3/d;


# direct methods
.method public constructor <init>(Lz3/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "source is null"

    invoke-static {p1, v0}, LG3/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, LK3/a;->b:Lz3/d;

    return-void
.end method
