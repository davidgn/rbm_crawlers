.class public final Lr3/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lj3/f0;


# direct methods
.method public constructor <init>(Lj3/f0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "extraHeaders"

    invoke-static {p1, v0}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lr3/g;->a:Lj3/f0;

    return-void
.end method
