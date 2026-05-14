.class public final Ll3/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final a:Lm3/f;

.field public final b:Ll3/D0;


# direct methods
.method public constructor <init>(Lm3/f;Ll3/D0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll3/k;->a:Lm3/f;

    iput-object p2, p0, Ll3/k;->b:Ll3/D0;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Ll3/k;->a:Lm3/f;

    invoke-virtual {v0}, Lm3/f;->close()V

    return-void
.end method
