.class final synthetic Lcom/google/android/gms/internal/ads/zzcsn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhad;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzcso;

.field private final synthetic zzb:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcso;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcsn;->zza:Lcom/google/android/gms/internal/ads/zzcso;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcsn;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)LN2/o;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsn;->zza:Lcom/google/android/gms/internal/ads/zzcso;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcsn;->zzb:Ljava/lang/String;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzcso;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)LN2/o;

    move-result-object p1

    return-object p1
.end method
