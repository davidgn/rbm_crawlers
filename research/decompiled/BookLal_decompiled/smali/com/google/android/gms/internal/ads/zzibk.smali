.class public abstract Lcom/google/android/gms/internal/ads/zzibk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zziew;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/google/android/gms/internal/ads/zzicn;->zzb:I

    sget v0, Lcom/google/android/gms/internal/ads/zzibm;->zza:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/io/InputStream;Lcom/google/android/gms/internal/ads/zzicn;)Ljava/lang/Object;
    .locals 1

    const/16 v0, 0x1000

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzicd;->zzH(Ljava/io/InputStream;I)Lcom/google/android/gms/internal/ads/zzicd;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zziew;->zzb(Lcom/google/android/gms/internal/ads/zzicd;Lcom/google/android/gms/internal/ads/zzicn;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzieo;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzicd;->zzb(I)V

    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zziep;->zzbi()Z

    move-result p1

    if-nez p1, :cond_2

    instance-of p1, p2, Lcom/google/android/gms/internal/ads/zzibi;

    if-nez p1, :cond_1

    instance-of p1, p2, Lcom/google/android/gms/internal/ads/zzibj;

    if-eqz p1, :cond_0

    check-cast p2, Lcom/google/android/gms/internal/ads/zzibj;

    const/4 p1, 0x0

    throw p1

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzifs;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzifs;-><init>(Lcom/google/android/gms/internal/ads/zzieo;)V

    goto :goto_0

    :cond_1
    check-cast p2, Lcom/google/android/gms/internal/ads/zzibi;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzibi;->zzaU()Lcom/google/android/gms/internal/ads/zzifs;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzifs;->zza()Lcom/google/android/gms/internal/ads/zzids;

    move-result-object p1

    throw p1

    :cond_2
    return-object p2
.end method
