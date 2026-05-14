.class public final Lg1/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz1/e;


# instance fields
.field public final a:Ljava/security/MessageDigest;

.field public final b:Lz1/h;


# direct methods
.method public constructor <init>(Ljava/security/MessageDigest;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz1/h;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lg1/h;->b:Lz1/h;

    iput-object p1, p0, Lg1/h;->a:Ljava/security/MessageDigest;

    return-void
.end method


# virtual methods
.method public final d()Lz1/h;
    .locals 1

    iget-object v0, p0, Lg1/h;->b:Lz1/h;

    return-object v0
.end method
