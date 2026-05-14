.class public final Lcom/google/android/gms/internal/ads/zzyx;
.super Lcom/google/android/gms/internal/ads/zzat;
.source "SourceFile"


# instance fields
.field public final zzc:Lcom/google/android/gms/internal/ads/zzgvm;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Ljava/util/List;)V
    .locals 2

    const/4 p2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/google/android/gms/internal/ads/zzat;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZI)V

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzgvm;->zzq(Ljava/util/Collection;)Lcom/google/android/gms/internal/ads/zzgvm;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzyx;->zzc:Lcom/google/android/gms/internal/ads/zzgvm;

    return-void
.end method


# virtual methods
.method public final getMessage()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyx;->zzc:Lcom/google/android/gms/internal/ads/zzgvm;

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzat;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x11

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "\nsniff failures: "

    invoke-static {v4, v1, v2, v0}, LC/a;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
