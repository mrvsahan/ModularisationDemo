//
//  SwiftUIView.swift
//  
//
//  Created by Prajakta Aher on 17/12/22.
//

import SwiftUI

public protocol DetailViewDelegate {
    func buttonAction(sender: DetailView)
}

public struct DetailView: View {
    let title: String
    let subTitle: String
    let ctaTitle: String
    var delegate: DetailViewDelegate?

    public init(title: String, subTitle: String, ctaTitle: String, delegate: DetailViewDelegate? = nil) {
        self.title = title
        self.subTitle = subTitle
        self.ctaTitle = ctaTitle
        self.delegate = delegate
    }
    
    public var body: some View {
        HStack {
            VStack(alignment: .leading) {
                HStack {
                    Text(title)
                        .font(Font.title)
                }
                HStack {
                    Text(subTitle)
                        .font(Font.caption)
                        .foregroundColor(Color.gray)
                }
                Button(ctaTitle) {
                    delegate?.buttonAction(sender: self)
                }
                .font(Font.callout)
            }
            Spacer()
        }
        .padding(EdgeInsets(top: 0,
                            leading: 16,
                            bottom: 0,
                            trailing: -16))
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(title: "Upside Down",
                   subTitle: "Jack Johnson",
                   ctaTitle: "Play")
    }
}
