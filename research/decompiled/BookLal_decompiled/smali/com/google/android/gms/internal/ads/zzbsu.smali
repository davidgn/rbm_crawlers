.class final Lcom/google/android/gms/internal/ads/zzbsu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcff;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbst;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbsy;Lcom/google/android/gms/internal/ads/zzbst;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbsu;->zza:Lcom/google/android/gms/internal/ads/zzbst;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbru;

    const-string v0, "Getting a new session for JS Engine."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbru;->zzl()Lcom/google/android/gms/internal/ads/zzbtb;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsu;->zza:Lcom/google/android/gms/internal/ads/zzbst;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcfi;->zzf(Ljava/lang/Object;)V

    return-void
.end method
