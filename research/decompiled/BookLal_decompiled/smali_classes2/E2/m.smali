.class public abstract LE2/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LE2/f;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LE2/f;

    const-string v1, "PhoneskyVerificationUtils"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LE2/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, LE2/m;->a:LE2/f;

    return-void
.end method
