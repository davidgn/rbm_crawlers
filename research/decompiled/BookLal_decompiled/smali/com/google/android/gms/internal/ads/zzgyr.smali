.class final Lcom/google/android/gms/internal/ads/zzgyr;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final zza(Ljava/io/File;Lcom/google/android/gms/internal/ads/zzgvw;Lcom/google/android/gms/internal/ads/zzgyi;)Ljava/io/FileOutputStream;
    .locals 1

    new-instance p2, Ljava/io/FileOutputStream;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgyq;->zza:Lcom/google/android/gms/internal/ads/zzgyq;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzgvi;->contains(Ljava/lang/Object;)Z

    move-result p1

    invoke-direct {p2, p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    return-object p2
.end method
