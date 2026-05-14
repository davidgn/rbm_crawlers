.class public final Li1/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Li1/w;

.field public final b:Le1/x;


# direct methods
.method public constructor <init>(LJ2/e;)V
    .locals 2

    new-instance v0, Li1/w;

    invoke-direct {v0, p1}, Li1/w;-><init>(LJ2/e;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Le1/x;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Le1/x;-><init>(I)V

    iput-object p1, p0, Li1/t;->b:Le1/x;

    iput-object v0, p0, Li1/t;->a:Li1/w;

    return-void
.end method
