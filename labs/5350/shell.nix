{
  pkgs ?
    import
      (fetchTarball "https://github.com/NixOS/nixpkgs/archive/11cb3517b3af6af300dd6c055aeda73c9bf52c48.tar.gz")
      { },
}:
pkgs.mkShell {
  buildInputs = with pkgs; [
    python312

    # for jupyter notebook
    python312Packages.numpy
    python312Packages.matplotlib
    python312Packages.keras
    python312Packages.jupyterlab

    # for streamlit apps
    python312Packages.streamlit
    python312Packages.numpy
    python312Packages.opencv4
    python312Packages.ultralytics
    python312Packages.pillow
    python312Packages.httpx
  ];
}
